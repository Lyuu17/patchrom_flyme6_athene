.class public Lcom/cyanogenmod/settings/DeviceInfoSettings;
.super Lcom/cyanogenmod/settings/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/DeviceInfoSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mDevIdCountdown:I

.field mDevIdToast:Landroid/widget/Toast;

.field mHits:[J


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 581
    new-instance v0, Lcom/cyanogenmod/settings/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/DeviceInfoSettings$1;-><init>()V

    .line 580
    sput-object v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    .line 67
    return-void
.end method

.method private ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 380
    const-string/jumbo v4, "ci_action_on_sys_update_intent_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, "intentStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 383
    const-string/jumbo v4, "ci_action_on_sys_update_extra_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "extra":Ljava/lang/String;
    const-string/jumbo v4, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "extraVal":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 390
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    :cond_0
    const-string/jumbo v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ciActionOnSysUpdate: broadcasting intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 393
    const-string/jumbo v6, " with extra "

    .line 392
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 393
    const-string/jumbo v6, ", "

    .line 392
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    .end local v0    # "extra":Ljava/lang/String;
    .end local v1    # "extraVal":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private static constructApiLevelString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 486
    sget v1, Lcyanogenmod/os/Build$CM_VERSION;->SDK_INT:I

    .line 487
    .local v1, "sdkInt":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcyanogenmod/os/Build;->getNameForSDKInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 489
    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 500
    const-string/jumbo v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 507
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string/jumbo v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 508
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    const-string/jumbo v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Regex did not match on /proc/version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string/jumbo v2, "Unavailable"

    return-object v2

    .line 511
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 512
    const-string/jumbo v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Regex match on /proc/version only returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 513
    const-string/jumbo v4, " groups"

    .line 512
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string/jumbo v2, "Unavailable"

    return-object v2

    .line 516
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 517
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 517
    const-string/jumbo v3, " "

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 517
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 517
    const-string/jumbo v3, "\n"

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 518
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 544
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0dd2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "feedbackReporter":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 547
    return-object v2

    .line 551
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.BUG_REPORT"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 555
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v8, 0x40

    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 556
    .local v7, "resolvedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 557
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_1

    .line 558
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 560
    :try_start_0
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 561
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 564
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 563
    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 565
    return-object v2

    .line 574
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v10

    .line 568
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 474
    :try_start_0
    const-string/jumbo v1, "/proc/version"

    invoke-static {v1}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "DeviceInfoSettings"

    .line 478
    const-string/jumbo v2, "IO Exception when getting kernel version for Device Info screen"

    .line 477
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    const-string/jumbo v1, "Unavailable"

    return-object v1
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 466
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 468
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 466
    return-object v1

    .line 467
    :catchall_0
    move-exception v1

    .line 468
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 467
    throw v1
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 414
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 411
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    move-object v6, p1

    .line 627
    check-cast v6, Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "intentUri":Ljava/lang/String;
    const-string/jumbo v6, "component=([^/]+)/"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 629
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 631
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 632
    :goto_0
    if-eqz v3, :cond_1

    .line 634
    :try_start_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 635
    const/4 v7, 0x1

    .line 634
    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 636
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_1

    .line 637
    const-string/jumbo v6, "DeviceInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is disabled, hiding preference."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    return v9

    .line 631
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v3, 0x0

    .local v3, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 641
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "DeviceInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not installed, hiding preference."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 644
    return v9

    .line 647
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v6, 0x0

    return v6
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 406
    const-string/jumbo v3, "\' preference"

    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFeedback()V
    .locals 3

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    return-void

    .line 452
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 447
    return-void
.end method

.method private setExplicitValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 441
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 422
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 425
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c03f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 431
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 433
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c03f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f0c0cc6

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v11, 0x7f08001f

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 121
    const-string/jumbo v11, "firmware_version"

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v11, "firmware_version"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 123
    sget-object v6, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 124
    .local v6, "patch":Ljava/lang/String;
    const-string/jumbo v11, ""

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 126
    :try_start_0
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 127
    .local v10, "template":Ljava/text/SimpleDateFormat;
    invoke-virtual {v10, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 128
    .local v7, "patchDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    const-string/jumbo v12, "dMMMMyyyy"

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "format":Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 133
    .end local v2    # "format":Ljava/lang/String;
    .end local v7    # "patchDate":Ljava/util/Date;
    .end local v10    # "template":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string/jumbo v11, "security_patch"

    invoke-direct {p0, v11, v6}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_1
    const-string/jumbo v11, "baseband_version"

    const-string/jumbo v12, "gsm.version.baseband"

    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v11, "fcc_equipment_id"

    const-string/jumbo v12, "ro.ril.fccid"

    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v11, "device_model"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v11, "build_number"

    sget-object v12, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v11, "build_number"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 144
    const-string/jumbo v11, "kernel_version"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 145
    .local v4, "kernelPref":Landroid/preference/Preference;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 146
    invoke-static {}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    const-string/jumbo v11, "mod_version"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 148
    sget-object v12, Lcyanogenmod/os/Build;->CYANOGENMOD_DISPLAY_VERSION:Ljava/lang/String;

    .line 147
    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    const-string/jumbo v11, "mod_version"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 150
    const-string/jumbo v11, "build_date"

    const-string/jumbo v12, "ro.build.date"

    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v11, "mod_api_level"

    invoke-static {}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->constructApiLevelString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setExplicitValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v11, "mod_api_level"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    const-string/jumbo v11, "build_date"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v11

    if-nez v11, :cond_6

    .line 156
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0c5c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "status":Ljava/lang/String;
    const-string/jumbo v11, "selinux_status"

    invoke-direct {p0, v11, v9}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v9    # "status":Ljava/lang/String;
    :cond_0
    :goto_2
    const-string/jumbo v11, "device_name"

    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v11, "device_name"

    const v12, 0x7f100014

    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 167
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string/jumbo v12, "selinux_status"

    .line 168
    const-string/jumbo v13, "ro.build.selinux"

    .line 167
    invoke-direct {p0, v11, v12, v13}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-nez v11, :cond_7

    .line 172
    const-string/jumbo v11, "cm_updates"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z

    .line 178
    :goto_3
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string/jumbo v12, "safetylegal"

    .line 179
    const-string/jumbo v13, "ro.url.safetylegal"

    .line 178
    invoke-direct {p0, v11, v12, v13}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string/jumbo v12, "fcc_equipment_id"

    .line 183
    const-string/jumbo v13, "ro.ril.fccid"

    .line 182
    invoke-direct {p0, v11, v12, v13}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string/jumbo v12, "baseband_version"

    invoke-virtual {p0, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string/jumbo v12, "device_feedback"

    invoke-virtual {p0, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 203
    .local v5, "parentPreference":Landroid/preference/PreferenceGroup;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-nez v11, :cond_8

    .line 205
    const-string/jumbo v11, "system_update_settings"

    .line 206
    const/4 v12, 0x1

    .line 204
    invoke-static {v0, v5, v11, v12}, Lcom/cyanogenmod/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 208
    const-string/jumbo v11, "system_update_settings"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 209
    const-string/jumbo v11, "system_update_settings"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z

    .line 216
    :cond_3
    :goto_4
    const-string/jumbo v11, "additional_system_update_settings"

    .line 217
    const v12, 0x7f100004

    .line 216
    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 220
    const-string/jumbo v11, "manual"

    const v12, 0x7f100006

    invoke-direct {p0, v11, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 223
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v11, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 225
    const-string/jumbo v11, "regulatory_info"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 226
    .local v8, "pref":Landroid/preference/Preference;
    if-eqz v8, :cond_4

    .line 227
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_4
    return-void

    .line 135
    .end local v0    # "act":Landroid/app/Activity;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "kernelPref":Landroid/preference/Preference;
    .end local v5    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_5
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string/jumbo v12, "security_patch"

    invoke-virtual {p0, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 158
    .restart local v4    # "kernelPref":Landroid/preference/Preference;
    :cond_6
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v11

    if-nez v11, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0c5d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 160
    .restart local v9    # "status":Ljava/lang/String;
    const-string/jumbo v11, "selinux_status"

    invoke-direct {p0, v11, v9}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 174
    .end local v9    # "status":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string/jumbo v12, "cm_updates"

    invoke-virtual {p0, v12}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 212
    .restart local v0    # "act":Landroid/app/Activity;
    .restart local v5    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_8
    const-string/jumbo v11, "system_update_settings"

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4

    .line 130
    .end local v0    # "act":Landroid/app/Activity;
    .end local v4    # "kernelPref":Landroid/preference/Preference;
    .end local v5    # "parentPreference":Landroid/preference/PreferenceGroup;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/text/ParseException;
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 18
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "firmware_version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "mod_version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 245
    if-eqz v11, :cond_3

    .line 247
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v11, v14, v12, v15, v13}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 248
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    aput-wide v14, v11, v12

    .line 249
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x1f4

    sub-long v14, v14, v16

    cmp-long v11, v12, v14

    if-ltz v11, :cond_2

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 251
    .local v10, "um":Landroid/os/UserManager;
    const-string/jumbo v11, "no_fun"

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 252
    const-string/jumbo v11, "DeviceInfoSettings"

    const-string/jumbo v12, "Sorry, no fun for you!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v11, 0x0

    return v11

    .line 256
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "is_lineage"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "mod_version"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    const-string/jumbo v11, "android"

    .line 259
    const-class v12, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 258
    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "um":Landroid/os/UserManager;
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p2}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v11

    return v11

    .line 262
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v6

    .line 263
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DeviceInfoSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to start activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "um":Landroid/os/UserManager;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "build_date"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 267
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v11, v14, v12, v15, v13}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 268
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    aput-wide v14, v11, v12

    .line 269
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x1f4

    sub-long v14, v14, v16

    cmp-long v11, v12, v14

    if-ltz v11, :cond_2

    .line 270
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 271
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string/jumbo v11, "com.android.systemui"

    .line 272
    const-string/jumbo v12, "com.android.systemui.tuner.TunerActivity$DemoModeActivity"

    .line 271
    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 275
    :catch_1
    move-exception v6

    .line 276
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DeviceInfoSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to start activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "kernel_version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 281
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdCountdown:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdCountdown:I

    .line 282
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdCountdown:I

    if-nez v11, :cond_6

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v7

    .line 284
    .local v7, "hwMgr":Lcyanogenmod/hardware/CMHardwareManager;
    invoke-virtual {v7}, Lcyanogenmod/hardware/CMHardwareManager;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "deviceID":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 287
    const v11, 0x7f0c0068

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 298
    .local v9, "msg":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 299
    const/4 v12, 0x1

    .line 298
    invoke-static {v11, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    .line 300
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 301
    const/4 v11, 0x7

    move-object/from16 v0, p0

    iput v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdCountdown:I

    goto/16 :goto_0

    .line 290
    .end local v9    # "msg":Ljava/lang/CharSequence;
    :cond_5
    const-string/jumbo v11, "clipboard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 291
    .local v3, "clipboardMgr":Landroid/content/ClipboardManager;
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 292
    const v12, 0x7f0c0069

    .line 291
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 295
    const/4 v13, 0x0

    aput-object v5, v12, v13

    const v13, 0x7f0c0067

    .line 294
    invoke-virtual {v11, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "msg":Ljava/lang/CharSequence;
    goto :goto_1

    .line 303
    .end local v3    # "clipboardMgr":Landroid/content/ClipboardManager;
    .end local v5    # "deviceID":Ljava/lang/String;
    .end local v7    # "hwMgr":Lcyanogenmod/hardware/CMHardwareManager;
    .end local v9    # "msg":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdCountdown:I

    if-lez v11, :cond_2

    .line 304
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdCountdown:I

    const/4 v12, 0x5

    if-ge v11, v12, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    if-eqz v11, :cond_7

    .line 307
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->cancel()V

    .line 309
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 310
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdCountdown:I

    .line 309
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 310
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdCountdown:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f110002

    .line 309
    invoke-virtual {v12, v15, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 311
    const/4 v13, 0x0

    .line 309
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    .line 312
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 315
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "build_number"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 317
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    return v11

    .line 320
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 321
    const-string/jumbo v12, "device_provisioned"

    const/4 v13, 0x0

    .line 320
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_a

    .line 322
    const/4 v11, 0x1

    return v11

    .line 325
    :cond_a
    const-string/jumbo v11, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 326
    .restart local v10    # "um":Landroid/os/UserManager;
    const-string/jumbo v11, "no_debugging_features"

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    return v11

    .line 328
    :cond_b
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v11, :cond_f

    .line 329
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 330
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v11, :cond_d

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "development"

    .line 332
    const/4 v13, 0x0

    .line 331
    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 333
    const-string/jumbo v12, "show"

    const/4 v13, 0x1

    .line 331
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v11, :cond_c

    .line 335
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->cancel()V

    .line 337
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0c006a

    .line 338
    const/4 v13, 0x1

    .line 337
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 339
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 341
    invoke-static {v11}, Lcom/cyanogenmod/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/cyanogenmod/settings/search/Index;

    move-result-object v11

    .line 343
    const-class v12, Lcom/cyanogenmod/settings/DevelopmentSettings;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 341
    invoke-virtual {v11, v12, v13, v14}, Lcom/cyanogenmod/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 345
    :cond_d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v11, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v12, 0x5

    if-ge v11, v12, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v11, :cond_e

    .line 348
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->cancel()V

    .line 350
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 351
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 350
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 351
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f110003

    .line 350
    invoke-virtual {v12, v15, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 352
    const/4 v13, 0x0

    .line 350
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 353
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 355
    :cond_f
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v11, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v11, :cond_10

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->cancel()V

    .line 359
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0c006b

    .line 360
    const/4 v13, 0x1

    .line 359
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 361
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 363
    .end local v10    # "um":Landroid/os/UserManager;
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "device_feedback"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_0

    .line 365
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "system_update_settings"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 367
    const-string/jumbo v11, "carrier_config"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 368
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v4}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 369
    .local v2, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v11, "ci_action_on_sys_update_bool"

    invoke-virtual {v2, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 370
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x7

    .line 234
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 235
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "development"

    .line 236
    const/4 v3, 0x0

    .line 235
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 236
    const-string/jumbo v2, "show"

    .line 237
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 235
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, -0x1

    .line 235
    :goto_0
    iput v0, p0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 238
    iput-object v5, p0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 239
    iput v1, p0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdCountdown:I

    .line 240
    iput-object v5, p0, Lcom/cyanogenmod/settings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    .line 233
    return-void

    :cond_0
    move v0, v1

    .line 237
    goto :goto_0
.end method
