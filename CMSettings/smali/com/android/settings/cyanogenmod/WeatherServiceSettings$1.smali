.class Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "WeatherServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$1;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$1;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;->-get1(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$1$1;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$1$1;-><init>(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$1;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;->-get1(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$1$2;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$1$2;-><init>(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method
