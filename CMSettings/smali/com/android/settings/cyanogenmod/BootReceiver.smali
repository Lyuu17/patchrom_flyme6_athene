.class public Lcom/cyanogenmod/settings/cyanogenmod/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private hasRestoredTunable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "hardware_tunable_restored"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setRestoredTunable(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "hardware_tunable_restored"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/cyanogenmod/BootReceiver;->hasRestoredTunable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {p1}, Lcom/cyanogenmod/settings/ButtonSettings;->restoreKeyDisabler(Landroid/content/Context;)V

    .line 45
    invoke-static {p1}, Lcom/cyanogenmod/settings/hardware/VibratorIntensity;->restore(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Lcom/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->restore(Landroid/content/Context;)V

    .line 47
    invoke-static {p1}, Lcom/cyanogenmod/settings/DisplaySettings;->restore(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/cyanogenmod/BootReceiver;->setRestoredTunable(Landroid/content/Context;)V

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/cyanogenmod/settings/location/LocationSettings;->restore(Landroid/content/Context;)V

    .line 54
    invoke-static {p1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->extractContributorsCloudDatabase(Landroid/content/Context;)V

    .line 56
    invoke-static {p1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->initializeUpdateRecoveryOption(Landroid/content/Context;)V

    .line 41
    return-void
.end method
