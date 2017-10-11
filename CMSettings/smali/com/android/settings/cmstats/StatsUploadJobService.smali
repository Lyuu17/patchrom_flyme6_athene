.class public Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;
.super Landroid/app/job/JobService;
.source "StatsUploadJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCurrentJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/job/JobParameters;",
            "Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->uploadToCM(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceVersion"    # Ljava/lang/String;
    .param p4, "deviceCountry"    # Ljava/lang/String;
    .param p5, "deviceCarrier"    # Ljava/lang/String;
    .param p6, "deviceCarrierId"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->buildStatsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-class v0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private buildStatsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceVersion"    # Ljava/lang/String;
    .param p4, "deviceCountry"    # Ljava/lang/String;
    .param p5, "deviceCarrier"    # Ljava/lang/String;
    .param p6, "deviceCarrierId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v0, "request":Lorg/json/JSONObject;
    const-string/jumbo v1, "device_hash"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v1, "device_name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v1, "device_version"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string/jumbo v1, "device_country"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string/jumbo v1, "device_carrier"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v1, "device_carrier_id"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    return-object v0
.end method

.method private getResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;
    .locals 6
    .param p1, "httpUrlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "errorStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Ljava/io/BufferedInputStream;

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 188
    :goto_0
    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 192
    .local v1, "responseStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    .line 193
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 192
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 194
    .local v2, "responseStreamReader":Ljava/io/BufferedReader;
    const-string/jumbo v0, ""

    .line 195
    .local v0, "line":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 190
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "responseStream":Ljava/io/InputStream;
    .end local v2    # "responseStreamReader":Ljava/io/BufferedReader;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_0

    .line 199
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStreamReader":Ljava/io/BufferedReader;
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 200
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private uploadToCM(Lorg/json/JSONObject;)Z
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 159
    const v7, 0x7f0c03e1

    invoke-virtual {p0, v7}, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 160
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 161
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 163
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 164
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 165
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 166
    const-string/jumbo v7, "Content-Type"

    const-string/jumbo v8, "application/json; charset=UTF-8"

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 169
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 170
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 172
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 173
    .local v1, "responseCode":I
    sget-boolean v7, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cm server response code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const/16 v7, 0xc8

    if-ne v1, v7, :cond_3

    const/4 v2, 0x1

    .line 175
    .local v2, "success":Z
    :goto_0
    if-nez v2, :cond_2

    .line 176
    sget-object v7, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed sending, server returned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 177
    if-eqz v2, :cond_1

    const/4 v6, 0x0

    .line 176
    :cond_1
    invoke-direct {p0, v5, v6}, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->getResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 179
    return v2

    .line 174
    .end local v2    # "success":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "success":Z
    goto :goto_0

    .line 180
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "responseCode":I
    .end local v2    # "success":Z
    :catchall_0
    move-exception v6

    .line 181
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    throw v6
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    sget-boolean v1, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartJob() called with jobParameters = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/cyanogenmod/settings/cmstats/Utilities;->isStatsCollectionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    return v4

    .line 72
    :cond_1
    new-instance v0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;

    invoke-direct {v0, p0, p1}, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;-><init>(Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;Landroid/app/job/JobParameters;)V

    .line 73
    .local v0, "uploadTask":Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;
    iget-object v1, p0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-array v2, v5, [Ljava/lang/Void;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return v5
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v4, 0x1

    .line 80
    sget-boolean v1, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStopJob() called with jobParameters = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;

    .line 86
    .local v0, "cancelledJob":Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0, v4}, Lcom/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->cancel(Z)Z

    .line 89
    return v4

    .line 92
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
