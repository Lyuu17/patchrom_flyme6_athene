.class Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$2;
.super Ljava/lang/Object;
.source "WeatherServiceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;->updateAdapter()V
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
    .line 225
    iput-object p1, p0, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$2;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$2;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;->-wrap0(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;)V

    .line 229
    const/4 v0, 0x0

    return v0
.end method
