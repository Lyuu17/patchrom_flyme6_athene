.class Lcom/cyanogenmod/settings/WifiCallingSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/WifiCallingSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/WifiCallingSettings;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cyanogenmod/settings/WifiCallingSettings$1;->this$0:Lcom/cyanogenmod/settings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v6, p0, Lcom/cyanogenmod/settings/WifiCallingSettings$1;->this$0:Lcom/cyanogenmod/settings/WifiCallingSettings;

    invoke-virtual {v6}, Lcom/cyanogenmod/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/SettingsActivity;

    .line 75
    .local v0, "activity":Lcom/cyanogenmod/settings/SettingsActivity;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 77
    .local v1, "isNonTtyOrTtyOnVolteEnabled":Z
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/SettingsActivity;->getSwitchBar()Lcom/cyanogenmod/settings/widget/SwitchBar;

    move-result-object v4

    .line 78
    .local v4, "switchBar":Lcom/cyanogenmod/settings/widget/SwitchBar;
    invoke-virtual {v4}, Lcom/cyanogenmod/settings/widget/SwitchBar;->getSwitch()Lcom/cyanogenmod/settings/widget/ToggleSwitch;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cyanogenmod/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    move v2, v1

    .line 81
    :goto_0
    if-nez p1, :cond_3

    .end local v1    # "isNonTtyOrTtyOnVolteEnabled":Z
    :goto_1
    invoke-virtual {v4, v1}, Lcom/cyanogenmod/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 84
    iget-object v6, p0, Lcom/cyanogenmod/settings/WifiCallingSettings$1;->this$0:Lcom/cyanogenmod/settings/WifiCallingSettings;

    invoke-virtual {v6}, Lcom/cyanogenmod/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "wifi_calling_mode"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 85
    .local v3, "pref":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 86
    if-eqz v2, :cond_0

    .line 87
    if-nez p1, :cond_0

    const/4 v5, 0x1

    .line 86
    :cond_0
    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 73
    :cond_1
    return-void

    .line 78
    .end local v3    # "pref":Landroid/preference/Preference;
    .restart local v1    # "isNonTtyOrTtyOnVolteEnabled":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "isWfcEnabled":Z
    goto :goto_0

    .end local v2    # "isWfcEnabled":Z
    :cond_3
    move v1, v5

    .line 81
    goto :goto_1
.end method
