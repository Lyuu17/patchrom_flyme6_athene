.class Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;
.super Ljava/lang/Object;
.source "WeatherServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherProviderServiceInfo"
.end annotation


# instance fields
.field caption:Ljava/lang/CharSequence;

.field componentName:Landroid/content/ComponentName;

.field icon:Landroid/graphics/drawable/Drawable;

.field isActive:Z

.field public settingsComponentName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;


# direct methods
.method private constructor <init>(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;-><init>(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;)V

    return-void
.end method
