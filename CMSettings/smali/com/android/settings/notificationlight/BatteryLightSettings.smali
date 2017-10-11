.class public Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;
.super Lcom/cyanogenmod/settings/SettingsPreferenceFragment;
.source "BatteryLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFullColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

.field private mLightEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

.field private mLowColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

.field private mMediumColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

.field private mPulseEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshDefault()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 109
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 111
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_0

    .line 112
    const-string/jumbo v5, "battery_light_low_color"

    .line 113
    const v6, 0x10e0058

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 112
    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, "lowColor":I
    iget-object v5, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v1, v7, v7, v7}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 117
    .end local v1    # "lowColor":I
    :cond_0
    iget-object v5, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_1

    .line 118
    const-string/jumbo v5, "battery_light_medium_color"

    .line 119
    const v6, 0x10e0059

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 118
    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 120
    .local v2, "mediumColor":I
    iget-object v5, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v2, v7, v7, v7}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 123
    .end local v2    # "mediumColor":I
    :cond_1
    iget-object v5, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_2

    .line 124
    const-string/jumbo v5, "battery_light_full_color"

    .line 125
    const v6, 0x10e005a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 124
    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, "fullColor":I
    iget-object v5, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v0, v7, v7, v7}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 107
    .end local v0    # "fullColor":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 60
    const v0, -0x7ffffffa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 65
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 70
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 72
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    const-string/jumbo v3, "general_section"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 74
    .local v0, "mGeneralPrefs":Landroid/preference/PreferenceGroup;
    const-string/jumbo v3, "battery_light_enabled"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 75
    const-string/jumbo v3, "battery_light_pulse"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 77
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->deviceLightsCan(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->deviceLightsCan(I)Z

    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    :cond_1
    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->deviceLightsCan(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {p0, v5}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->setHasOptionsMenu(Z)V

    .line 87
    const-string/jumbo v3, "low_color"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 88
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v3, p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    const-string/jumbo v3, "medium_color"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 91
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v3, p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    const-string/jumbo v3, "full_color"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 94
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v3, p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    :goto_0
    return-void

    .line 96
    :cond_2
    const-string/jumbo v3, "colors_list"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 97
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->resetColors()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 151
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->deviceLightsCan(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const v1, 0x7f0c00ab

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 153
    const v2, 0x7f0200ad

    .line 152
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 154
    const/16 v2, 0x72

    .line 152
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    .line 156
    const/4 v2, 0x6

    .line 152
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 149
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    const/4 v0, 0x0

    return v0

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->resetToDefaults()V

    .line 165
    const/4 v0, 0x1

    return v0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 197
    check-cast v0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 198
    .local v0, "lightPref":Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 104
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 102
    return-void
.end method

.method protected resetColors()V
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 172
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "battery_light_low_color"

    .line 176
    const v3, 0x10e0058

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 175
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    const-string/jumbo v2, "battery_light_medium_color"

    .line 178
    const v3, 0x10e0059

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 177
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    const-string/jumbo v2, "battery_light_full_color"

    .line 180
    const v3, 0x10e005a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 179
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 170
    return-void
.end method

.method protected resetToDefaults()V
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 186
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f10000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 187
    .local v0, "batteryLightEnabled":Z
    const v3, 0x7f10000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 189
    .local v1, "batteryLightPulseEnabled":Z
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;->setChecked(Z)V

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;->setChecked(Z)V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->resetColors()V

    .line 184
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/Integer;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "low_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const-string/jumbo v1, "battery_light_low_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string/jumbo v1, "medium_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const-string/jumbo v1, "battery_light_medium_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 143
    :cond_2
    const-string/jumbo v1, "full_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string/jumbo v1, "battery_light_full_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
