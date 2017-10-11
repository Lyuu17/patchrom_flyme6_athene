.class public Lcom/cyanogenmod/settings/cmstats/ReportingService;
.super Landroid/app/IntentService;
.source "ReportingService.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "CMStats"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/cyanogenmod/settings/cmstats/ReportingService;->DEBUG:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/cyanogenmod/settings/cmstats/ReportingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x1

    .line 43
    const-string/jumbo v9, "jobscheduler"

    invoke-virtual {p0, v9}, Lcom/cyanogenmod/settings/cmstats/ReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/job/JobScheduler;

    .line 45
    .local v8, "js":Landroid/app/job/JobScheduler;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/cyanogenmod/settings/cmstats/Utilities;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/cyanogenmod/settings/cmstats/Utilities;->getDevice()Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/cyanogenmod/settings/cmstats/Utilities;->getModVersion()Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "deviceVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/cyanogenmod/settings/cmstats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "deviceCountry":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/cyanogenmod/settings/cmstats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "deviceCarrier":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/cyanogenmod/settings/cmstats/Utilities;->getCarrierId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "deviceCarrierId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/cyanogenmod/settings/cmstats/AnonymousStats;->getNextJobId(Landroid/content/Context;)I

    move-result v1

    .line 54
    .local v1, "cmOrgJobId":I
    sget-boolean v9, Lcom/cyanogenmod/settings/cmstats/ReportingService;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "CMStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "scheduling job id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 57
    .local v0, "cmBundle":Landroid/os/PersistableBundle;
    const-string/jumbo v9, "deviceName"

    invoke-virtual {v0, v9, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v9, "uniqueId"

    invoke-virtual {v0, v9, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v9, "version"

    invoke-virtual {v0, v9, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v9, "country"

    invoke-virtual {v0, v9, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v9, "carrier"

    invoke-virtual {v0, v9, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v9, "carrierId"

    invoke-virtual {v0, v9, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v9, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 66
    const-string/jumbo v9, "job_type"

    invoke-virtual {v0, v9, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    new-instance v9, Landroid/app/job/JobInfo$Builder;

    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cmstats/ReportingService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 71
    const-class v12, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 70
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v1, v10}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v9, v13}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v9

    .line 73
    const-wide/16 v10, 0x3e8

    .line 70
    invoke-virtual {v9, v10, v11}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 79
    invoke-static {p0}, Lcom/cyanogenmod/settings/cmstats/AnonymousStats;->updateLastSynced(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Lcom/cyanogenmod/settings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;)V

    .line 42
    return-void
.end method
