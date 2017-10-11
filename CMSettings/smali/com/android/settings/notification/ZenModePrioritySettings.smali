.class public Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;
.super Lcom/cyanogenmod/settings/notification/ZenModeSettingsBase;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/cyanogenmod/settings/search/Indexable;


# instance fields
.field private mCalls:Lcom/cyanogenmod/settings/DropDownPreference;

.field private mDisableListeners:Z

.field private mEvents:Landroid/preference/SwitchPreference;

.field private mMessages:Lcom/cyanogenmod/settings/DropDownPreference;

.field private mReminders:Landroid/preference/SwitchPreference;

.field private mRepeatCallers:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private static addSources(Lcom/cyanogenmod/settings/DropDownPreference;)V
    .locals 2
    .param p0, "pref"    # Lcom/cyanogenmod/settings/DropDownPreference;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0c0dbb

    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0c0dbc

    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 207
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0c0dbd

    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 208
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0c0dbe

    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 204
    return-void
.end method

.method private updateControls()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 186
    iput-boolean v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    .line 187
    iget-object v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mCalls:Lcom/cyanogenmod/settings/DropDownPreference;

    if-eqz v0, :cond_0

    .line 188
    iget-object v4, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mCalls:Lcom/cyanogenmod/settings/DropDownPreference;

    iget-object v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/cyanogenmod/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mMessages:Lcom/cyanogenmod/settings/DropDownPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 194
    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eqz v0, :cond_4

    move v0, v2

    .line 194
    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 196
    iput-boolean v3, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    .line 185
    return-void

    :cond_2
    move v0, v1

    .line 188
    goto :goto_0

    :cond_3
    move v0, v2

    .line 194
    goto :goto_1

    :cond_4
    move v0, v3

    .line 195
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 201
    const/16 v0, 0x8d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f080077

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 57
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v2, "reminders"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    .line 58
    iget-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$1;

    invoke-direct {v3, p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$1;-><init>(Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    const-string/jumbo v2, "events"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    .line 73
    iget-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$2;

    invoke-direct {v3, p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$2;-><init>(Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    const-string/jumbo v2, "messages"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/settings/DropDownPreference;

    iput-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mMessages:Lcom/cyanogenmod/settings/DropDownPreference;

    .line 88
    iget-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mMessages:Lcom/cyanogenmod/settings/DropDownPreference;

    invoke-static {v2}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->addSources(Lcom/cyanogenmod/settings/DropDownPreference;)V

    .line 89
    iget-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mMessages:Lcom/cyanogenmod/settings/DropDownPreference;

    new-instance v3, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$3;

    invoke-direct {v3, p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$3;-><init>(Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/DropDownPreference;->setCallback(Lcom/cyanogenmod/settings/DropDownPreference$Callback;)V

    .line 110
    const-string/jumbo v2, "calls"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/settings/DropDownPreference;

    iput-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mCalls:Lcom/cyanogenmod/settings/DropDownPreference;

    .line 111
    iget-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mCalls:Lcom/cyanogenmod/settings/DropDownPreference;

    invoke-static {v2}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->addSources(Lcom/cyanogenmod/settings/DropDownPreference;)V

    .line 112
    iget-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mCalls:Lcom/cyanogenmod/settings/DropDownPreference;

    new-instance v3, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$4;

    invoke-direct {v3, p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$4;-><init>(Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/DropDownPreference;->setCallback(Lcom/cyanogenmod/settings/DropDownPreference$Callback;)V

    .line 133
    const-string/jumbo v2, "repeat_callers"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    .line 134
    iget-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 135
    iget-object v5, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e009d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 134
    const v5, 0x7f0c0dc4

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$5;

    invoke-direct {v3, p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$5;-><init>(Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    const-string/jumbo v2, "vibration"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settings/DropDownPreference;

    .line 152
    .local v1, "vibration":Lcom/cyanogenmod/settings/DropDownPreference;
    const v2, 0x7f0c036c

    invoke-virtual {v1, v2, v7}, Lcom/cyanogenmod/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 153
    const v2, 0x7f0c036d

    invoke-virtual {v1, v2, v7}, Lcom/cyanogenmod/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 154
    const v2, 0x7f0c036e

    invoke-virtual {v1, v2, v7}, Lcom/cyanogenmod/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 155
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 156
    const-string/jumbo v3, "zen_priority_vibration_mode"

    .line 155
    invoke-static {v2, v3, v8}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/DropDownPreference;->setSelectedItem(I)V

    .line 157
    new-instance v2, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$6;

    invoke-direct {v2, p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$6;-><init>(Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/DropDownPreference;->setCallback(Lcom/cyanogenmod/settings/DropDownPreference$Callback;)V

    .line 167
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 168
    const v3, 0x1120047

    .line 167
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    const-string/jumbo v2, "zen_priority_allow_lights"

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->updateControls()V

    .line 52
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->updateControls()V

    .line 181
    return-void
.end method
