.class public Lcom/cyanogenmod/settings/ButtonSettings;
.super Lcom/cyanogenmod/settings/SettingsPreferenceFragment;
.source "ButtonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppSwitchLongPressAction:Landroid/preference/ListPreference;

.field private mAppSwitchPressAction:Landroid/preference/ListPreference;

.field private mAssistLongPressAction:Landroid/preference/ListPreference;

.field private mAssistPressAction:Landroid/preference/ListPreference;

.field private mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

.field private mCameraLaunch:Landroid/preference/SwitchPreference;

.field private mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

.field private mCameraWakeScreen:Landroid/preference/SwitchPreference;

.field private mDisableNavigationKeys:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHomeAnswerCall:Landroid/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;

.field private mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

.field private mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

.field private mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

.field private mPowerEndCall:Landroid/preference/SwitchPreference;

.field private mSwapVolumeButtons:Landroid/preference/SwitchPreference;

.field private mVolumeKeyCursorControl:Landroid/preference/ListPreference;

.field private mVolumeMusicControls:Landroid/preference/SwitchPreference;

.field private mVolumeWakeScreen:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/cyanogenmod/settings/ButtonSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/cyanogenmod/settings/ButtonSettings;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/ButtonSettings;Z)V
    .locals 0
    .param p1, "navbarEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    move-object v1, p2

    .line 551
    check-cast v1, Ljava/lang/String;

    .line 552
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 550
    return-void
.end method

.method private handleSystemActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    move-object v1, p2

    .line 558
    check-cast v1, Ljava/lang/String;

    .line 559
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 560
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    return-void
.end method

.method private handleToggleHomeButtonAnswersCallPreferenceClick()V
    .locals 3

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 736
    const-string/jumbo v2, "ring_home_button_behavior"

    iget-object v0, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    const/4 v0, 0x2

    .line 735
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 734
    return-void

    .line 738
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 729
    const-string/jumbo v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const/4 v0, 0x2

    .line 728
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 727
    return-void

    .line 731
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 478
    .local v0, "list":Landroid/preference/ListPreference;
    if-nez v0, :cond_0

    return-object v2

    .line 479
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 482
    return-object v0
.end method

.method private initRecentsLongPressAction(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 487
    .local v9, "list":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 491
    const-string/jumbo v15, "recents_long_press_activity"

    .line 490
    invoke-static {v14, v15}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "componentString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 493
    .local v12, "targetComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 494
    const v14, 0x7f0c01f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cyanogenmod/settings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 501
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 502
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v14, "cyanogenmod.intent.action.RECENTS_LONG_PRESS"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v14, 0x10000

    .line 503
    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 505
    .local v11, "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 507
    const v14, 0x7f0c01f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cyanogenmod/settings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 509
    const-string/jumbo v15, "recents_long_press_activity"

    const/16 v16, 0x0

    .line 508
    invoke-static/range {v14 .. v16}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 510
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 511
    return-object v9

    .line 496
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "targetComponent":Landroid/content/ComponentName;
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .local v12, "targetComponent":Landroid/content/ComponentName;
    goto :goto_0

    .line 514
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v3, v14, [Ljava/lang/CharSequence;

    .line 515
    .local v3, "entries":[Ljava/lang/CharSequence;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v13, v14, [Ljava/lang/CharSequence;

    .line 517
    .local v13, "values":[Ljava/lang/CharSequence;
    const v14, 0x7f0c01f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cyanogenmod/settings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v3, v15

    .line 518
    const-string/jumbo v14, ""

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 519
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 520
    const/4 v5, 0x1

    .line 521
    .local v5, "i":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 525
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_2
    new-instance v4, Landroid/content/ComponentName;

    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 534
    iget-object v15, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 533
    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .local v4, "entryComponent":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 536
    if-eqz v12, :cond_2

    .line 537
    invoke-virtual {v4, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 539
    aget-object v14, v3, v5

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    aget-object v14, v13, v5

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 543
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 526
    .end local v4    # "entryComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v14, "SystemSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error package not found: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v14, v3, v5

    goto :goto_2

    .line 545
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {v9, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 546
    invoke-virtual {v9, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 547
    return-object v9
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 743
    const v0, 0x11200be

    .line 742
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static restoreKeyDisabler(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 685
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 686
    .local v0, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    return-void

    .line 690
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 691
    const-string/jumbo v3, "dev_force_show_navbar"

    .line 690
    invoke-static {v2, v3, v1}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    .line 684
    return-void
.end method

.method private updateDisableNavkeysCategories(Z)V
    .locals 10
    .param p1, "navbarEnabled"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 643
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 647
    .local v6, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string/jumbo v7, "home_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 649
    .local v4, "homeCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v7, "back_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 651
    .local v2, "backCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v7, "menu_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 653
    .local v5, "menuCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v7, "assist_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 655
    .local v1, "assistCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v7, "app_switch_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 657
    .local v0, "appSwitchCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v7, "button_backlight"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    .line 661
    .local v3, "backlight":Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;
    if-eqz v3, :cond_0

    .line 662
    if-eqz p1, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v3, v7}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->setEnabled(Z)V

    .line 663
    invoke-virtual {v3}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    .line 667
    :cond_0
    if-eqz v4, :cond_1

    .line 668
    if-eqz p1, :cond_7

    move v7, v8

    :goto_1
    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 670
    :cond_1
    if-eqz v2, :cond_2

    .line 671
    if-eqz p1, :cond_8

    move v7, v8

    :goto_2
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 673
    :cond_2
    if-eqz v5, :cond_3

    .line 674
    if-eqz p1, :cond_9

    move v7, v8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 676
    :cond_3
    if-eqz v1, :cond_4

    .line 677
    if-eqz p1, :cond_a

    move v7, v8

    :goto_4
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 679
    :cond_4
    if-eqz v0, :cond_5

    .line 680
    if-eqz p1, :cond_b

    :goto_5
    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 642
    :cond_5
    return-void

    :cond_6
    move v7, v9

    .line 662
    goto :goto_0

    :cond_7
    move v7, v9

    .line 668
    goto :goto_1

    :cond_8
    move v7, v9

    .line 671
    goto :goto_2

    :cond_9
    move v7, v9

    .line 674
    goto :goto_3

    :cond_a
    move v7, v9

    .line 677
    goto :goto_4

    :cond_b
    move v8, v9

    .line 680
    goto :goto_5
.end method

.method private updateDisableNavkeysOption()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 637
    const-string/jumbo v2, "dev_force_show_navbar"

    .line 636
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 639
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 635
    return-void

    .line 636
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private static writeDisableNavkeysOption(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 632
    const-string/jumbo v2, "dev_force_show_navbar"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 631
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    return-void

    .line 632
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 566
    const v0, -0x7ffffff9

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 50
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super/range {p0 .. p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v47, 0x7f080017

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->addPreferencesFromResource(I)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 154
    .local v35, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 155
    .local v36, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    .line 157
    .local v33, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    .line 158
    const v48, 0x10e0062

    .line 157
    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 159
    .local v12, "deviceKeys":I
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    .line 160
    const v48, 0x10e0063

    .line 159
    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 162
    .local v13, "deviceWakeKeys":I
    const/16 v47, 0x1a

    invoke-static/range {v47 .. v47}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v26

    .line 163
    .local v26, "hasPowerKey":Z
    and-int/lit8 v47, v12, 0x1

    if-eqz v47, :cond_14

    const/16 v23, 0x1

    .line 164
    .local v23, "hasHomeKey":Z
    :goto_0
    and-int/lit8 v47, v12, 0x2

    if-eqz v47, :cond_15

    const/16 v21, 0x1

    .line 165
    .local v21, "hasBackKey":Z
    :goto_1
    and-int/lit8 v47, v12, 0x4

    if-eqz v47, :cond_16

    const/16 v24, 0x1

    .line 166
    .local v24, "hasMenuKey":Z
    :goto_2
    and-int/lit8 v47, v12, 0x8

    if-eqz v47, :cond_17

    const/16 v20, 0x1

    .line 167
    .local v20, "hasAssistKey":Z
    :goto_3
    and-int/lit8 v47, v12, 0x10

    if-eqz v47, :cond_18

    const/16 v19, 0x1

    .line 168
    .local v19, "hasAppSwitchKey":Z
    :goto_4
    and-int/lit8 v47, v12, 0x20

    if-eqz v47, :cond_19

    const/16 v22, 0x1

    .line 169
    .local v22, "hasCameraKey":Z
    :goto_5
    and-int/lit8 v47, v12, 0x40

    if-eqz v47, :cond_1a

    const/16 v27, 0x1

    .line 171
    .local v27, "hasVolumeKeys":Z
    :goto_6
    and-int/lit8 v47, v13, 0x1

    if-eqz v47, :cond_1b

    const/16 v41, 0x1

    .line 172
    .local v41, "showHomeWake":Z
    :goto_7
    and-int/lit8 v47, v13, 0x2

    if-eqz v47, :cond_1c

    const/16 v39, 0x1

    .line 173
    .local v39, "showBackWake":Z
    :goto_8
    and-int/lit8 v47, v13, 0x4

    if-eqz v47, :cond_1d

    const/16 v42, 0x1

    .line 174
    .local v42, "showMenuWake":Z
    :goto_9
    and-int/lit8 v47, v13, 0x8

    if-eqz v47, :cond_1e

    const/16 v38, 0x1

    .line 175
    .local v38, "showAssistWake":Z
    :goto_a
    and-int/lit8 v47, v13, 0x10

    if-eqz v47, :cond_1f

    const/16 v37, 0x1

    .line 176
    .local v37, "showAppSwitchWake":Z
    :goto_b
    and-int/lit8 v47, v13, 0x20

    if-eqz v47, :cond_20

    const/16 v40, 0x1

    .line 177
    .local v40, "showCameraWake":Z
    :goto_c
    and-int/lit8 v47, v13, 0x40

    if-eqz v47, :cond_21

    const/16 v43, 0x1

    .line 179
    .local v43, "showVolumeWake":Z
    :goto_d
    const/16 v18, 0x0

    .line 181
    .local v18, "hasAnyBindableKey":Z
    const-string/jumbo v47, "power_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceCategory;

    .line 183
    .local v32, "powerCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "home_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceCategory;

    .line 185
    .local v28, "homeCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "back_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 187
    .local v5, "backCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "menu_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/PreferenceCategory;

    .line 189
    .local v30, "menuCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "assist_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 191
    .local v4, "assistCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "app_switch_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 193
    .local v3, "appSwitchCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "volume_keys"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    check-cast v45, Landroid/preference/PreferenceCategory;

    .line 195
    .local v45, "volumeCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "camera_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 198
    .local v7, "cameraCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "power_end_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    .line 202
    const-string/jumbo v47, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    .line 201
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    .line 205
    const-string/jumbo v47, "home_answer_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    .line 207
    new-instance v47, Landroid/os/Handler;

    invoke-direct/range {v47 .. v47}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mHandler:Landroid/os/Handler;

    .line 210
    const-string/jumbo v47, "disable_nav_keys"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    .line 212
    const-string/jumbo v47, "navigation_bar_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    .line 215
    const-string/jumbo v47, "navigation_bar_left"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

    .line 219
    const-string/jumbo v47, "navigation_recents_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->initRecentsLongPressAction(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v47

    .line 218
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v17

    .line 225
    .local v17, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v31, 0x0

    .line 226
    .local v31, "needsNavigationBar":Z
    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v47

    if-eqz v47, :cond_23

    .line 228
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v46

    .line 229
    .local v46, "wm":Landroid/view/IWindowManager;
    invoke-interface/range {v46 .. v46}, Landroid/view/IWindowManager;->needsNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v31

    .line 233
    .end local v31    # "needsNavigationBar":Z
    .end local v46    # "wm":Landroid/view/IWindowManager;
    :goto_e
    if-eqz v31, :cond_22

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :goto_f
    if-eqz v26, :cond_26

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/cyanogenmod/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v47

    if-nez v47, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    .line 250
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_25

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/cyanogenmod/settings/ButtonSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v47

    .line 250
    if-eqz v47, :cond_25

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    const-string/jumbo v48, "camera_double_tap_power_gesture_disabled"

    const/16 v49, 0x0

    .line 254
    invoke-static/range {v47 .. v49}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 256
    .local v8, "cameraDoubleTapPowerDisabled":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    move-object/from16 v48, v0

    if-nez v8, :cond_24

    const/16 v47, 0x1

    :goto_10
    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 265
    .end local v8    # "cameraDoubleTapPowerDisabled":I
    :goto_11
    if-eqz v23, :cond_27

    .line 266
    if-nez v41, :cond_1

    .line 267
    const-string/jumbo v47, "home_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/cyanogenmod/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v47

    if-nez v47, :cond_2

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    .line 276
    :cond_2
    const v47, 0x10e005e

    .line 275
    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 277
    .local v11, "defaultLongPressAction":I
    if-ltz v11, :cond_3

    .line 278
    const/16 v47, 0x8

    move/from16 v0, v47

    if-le v11, v0, :cond_4

    .line 279
    :cond_3
    const/4 v11, 0x0

    .line 283
    :cond_4
    const v47, 0x10e005f

    .line 282
    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 284
    .local v10, "defaultDoubleTapAction":I
    if-ltz v10, :cond_5

    .line 285
    const/16 v47, 0x8

    move/from16 v0, v47

    if-le v10, v0, :cond_6

    .line 286
    :cond_5
    const/4 v10, 0x0

    .line 290
    :cond_6
    const-string/jumbo v47, "key_home_long_press_action"

    .line 289
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    invoke-static {v0, v1, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 292
    .local v29, "longPressAction":I
    const-string/jumbo v47, "hardware_keys_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 295
    const-string/jumbo v47, "key_home_double_tap_action"

    .line 294
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    invoke-static {v0, v1, v10}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 297
    .local v14, "doubleTapAction":I
    const-string/jumbo v47, "hardware_keys_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v14}, Lcom/cyanogenmod/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 299
    const/16 v18, 0x1

    .line 304
    .end local v10    # "defaultDoubleTapAction":I
    .end local v11    # "defaultLongPressAction":I
    .end local v14    # "doubleTapAction":I
    .end local v29    # "longPressAction":I
    :goto_12
    if-eqz v21, :cond_28

    .line 305
    if-nez v39, :cond_7

    .line 306
    const-string/jumbo v47, "back_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :cond_7
    :goto_13
    if-eqz v24, :cond_2a

    .line 314
    if-nez v42, :cond_8

    .line 315
    const-string/jumbo v47, "menu_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v30

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    :cond_8
    const-string/jumbo v47, "key_menu_action"

    const/16 v48, 0x1

    .line 318
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 320
    .local v34, "pressAction":I
    const-string/jumbo v47, "hardware_keys_menu_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 323
    const-string/jumbo v48, "key_menu_long_press_action"

    .line 324
    if-eqz v20, :cond_29

    const/16 v47, 0x0

    .line 322
    :goto_14
    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 325
    .restart local v29    # "longPressAction":I
    const-string/jumbo v47, "hardware_keys_menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 327
    const/16 v18, 0x1

    .line 332
    .end local v29    # "longPressAction":I
    .end local v34    # "pressAction":I
    :goto_15
    if-eqz v20, :cond_2b

    .line 333
    if-nez v38, :cond_9

    .line 334
    const-string/jumbo v47, "assist_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 338
    :cond_9
    const-string/jumbo v47, "key_assist_action"

    const/16 v48, 0x3

    .line 337
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 339
    .restart local v34    # "pressAction":I
    const-string/jumbo v47, "hardware_keys_assist_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 342
    const-string/jumbo v47, "key_assist_long_press_action"

    const/16 v48, 0x4

    .line 341
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 343
    .restart local v29    # "longPressAction":I
    const-string/jumbo v47, "hardware_keys_assist_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 345
    const/16 v18, 0x1

    .line 350
    .end local v29    # "longPressAction":I
    .end local v34    # "pressAction":I
    :goto_16
    if-eqz v19, :cond_2c

    .line 351
    if-nez v37, :cond_a

    .line 353
    const-string/jumbo v47, "app_switch_wake_screen"

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    :cond_a
    const-string/jumbo v47, "key_app_switch_action"

    const/16 v48, 0x2

    .line 356
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 358
    .restart local v34    # "pressAction":I
    const-string/jumbo v47, "hardware_keys_app_switch_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 361
    const-string/jumbo v47, "key_app_switch_long_press_action"

    const/16 v48, 0x0

    .line 360
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 362
    .restart local v29    # "longPressAction":I
    const-string/jumbo v47, "hardware_keys_app_switch_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 364
    const/16 v18, 0x1

    .line 369
    .end local v29    # "longPressAction":I
    .end local v34    # "pressAction":I
    :goto_17
    if-eqz v22, :cond_2d

    .line 370
    const-string/jumbo v47, "camera_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraWakeScreen:Landroid/preference/SwitchPreference;

    .line 372
    const-string/jumbo v47, "camera_sleep_on_release"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    .line 371
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    .line 373
    const-string/jumbo v47, "camera_launch"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraLaunch:Landroid/preference/SwitchPreference;

    .line 375
    if-nez v40, :cond_b

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraWakeScreen:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    :cond_b
    const v47, 0x1120054

    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v47

    if-eqz v47, :cond_c

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_c
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/cyanogenmod/settings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v47

    if-eqz v47, :cond_2f

    .line 387
    if-nez v43, :cond_d

    .line 388
    const-string/jumbo v47, "volume_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    :cond_d
    const-string/jumbo v47, "volume_key_cursor_control"

    const/16 v48, 0x0

    .line 391
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 393
    .local v9, "cursorControlAction":I
    const-string/jumbo v47, "volume_key_cursor_control"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v9}, Lcom/cyanogenmod/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    .line 397
    const-string/jumbo v48, "swap_volume_keys_on_rotation"

    const/16 v49, 0x0

    .line 396
    invoke-static/range {v47 .. v49}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    .line 399
    .local v44, "swapVolumeKeys":I
    const-string/jumbo v47, "swap_volume_buttons"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    .line 398
    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_e

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    move-object/from16 v48, v0

    if-lez v44, :cond_2e

    const/16 v47, 0x1

    :goto_19
    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 410
    .end local v9    # "cursorControlAction":I
    .end local v44    # "swapVolumeKeys":I
    :cond_e
    :goto_1a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    .line 411
    const-string/jumbo v48, "dev_force_show_navbar"

    const/16 v49, 0x0

    .line 410
    invoke-static/range {v47 .. v49}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v47

    .line 411
    const/16 v48, 0x1

    .line 410
    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_30

    const/16 v16, 0x1

    .line 412
    .local v16, "forceNavbar":Z
    :goto_1b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v47

    if-nez v47, :cond_31

    .line 413
    move/from16 v25, v16

    .line 415
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lorg/cyanogenmod/internal/util/ScreenType;->isPhone(Landroid/content/Context;)Z

    move-result v47

    if-nez v47, :cond_f

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 419
    :cond_f
    if-nez v25, :cond_10

    if-nez v31, :cond_32

    .line 420
    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v47

    if-eqz v47, :cond_32

    .line 429
    .end local v16    # "forceNavbar":Z
    :cond_10
    :goto_1d
    const-string/jumbo v47, "button_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    .line 430
    .local v6, "backlight":Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;
    invoke-virtual {v6}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported()Z

    move-result v47

    if-nez v47, :cond_11

    invoke-virtual {v6}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported()Z

    move-result v47

    if-eqz v47, :cond_33

    .line 434
    :cond_11
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraWakeScreen:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_12

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    .line 436
    const v48, 0x1120054

    .line 435
    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v47

    if-eqz v47, :cond_34

    .line 440
    :cond_12
    :goto_1f
    const-string/jumbo v47, "volume_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    .line 441
    const-string/jumbo v47, "volbtn_music_controls"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_13

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_13

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    const-string/jumbo v48, "volume_wake_screen"

    invoke-virtual/range {v47 .. v48}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Landroid/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 148
    :cond_13
    return-void

    .line 163
    .end local v3    # "appSwitchCategory":Landroid/preference/PreferenceCategory;
    .end local v4    # "assistCategory":Landroid/preference/PreferenceCategory;
    .end local v5    # "backCategory":Landroid/preference/PreferenceCategory;
    .end local v6    # "backlight":Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;
    .end local v7    # "cameraCategory":Landroid/preference/PreferenceCategory;
    .end local v17    # "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    .end local v18    # "hasAnyBindableKey":Z
    .end local v19    # "hasAppSwitchKey":Z
    .end local v20    # "hasAssistKey":Z
    .end local v21    # "hasBackKey":Z
    .end local v22    # "hasCameraKey":Z
    .end local v23    # "hasHomeKey":Z
    .end local v24    # "hasMenuKey":Z
    .end local v27    # "hasVolumeKeys":Z
    .end local v28    # "homeCategory":Landroid/preference/PreferenceCategory;
    .end local v30    # "menuCategory":Landroid/preference/PreferenceCategory;
    .end local v32    # "powerCategory":Landroid/preference/PreferenceCategory;
    .end local v37    # "showAppSwitchWake":Z
    .end local v38    # "showAssistWake":Z
    .end local v39    # "showBackWake":Z
    .end local v40    # "showCameraWake":Z
    .end local v41    # "showHomeWake":Z
    .end local v42    # "showMenuWake":Z
    .end local v43    # "showVolumeWake":Z
    .end local v45    # "volumeCategory":Landroid/preference/PreferenceCategory;
    :cond_14
    const/16 v23, 0x0

    .restart local v23    # "hasHomeKey":Z
    goto/16 :goto_0

    .line 164
    :cond_15
    const/16 v21, 0x0

    .restart local v21    # "hasBackKey":Z
    goto/16 :goto_1

    .line 165
    :cond_16
    const/16 v24, 0x0

    .restart local v24    # "hasMenuKey":Z
    goto/16 :goto_2

    .line 166
    :cond_17
    const/16 v20, 0x0

    .restart local v20    # "hasAssistKey":Z
    goto/16 :goto_3

    .line 167
    :cond_18
    const/16 v19, 0x0

    .restart local v19    # "hasAppSwitchKey":Z
    goto/16 :goto_4

    .line 168
    :cond_19
    const/16 v22, 0x0

    .restart local v22    # "hasCameraKey":Z
    goto/16 :goto_5

    .line 169
    :cond_1a
    const/16 v27, 0x0

    .restart local v27    # "hasVolumeKeys":Z
    goto/16 :goto_6

    .line 171
    :cond_1b
    const/16 v41, 0x0

    .restart local v41    # "showHomeWake":Z
    goto/16 :goto_7

    .line 172
    :cond_1c
    const/16 v39, 0x0

    .restart local v39    # "showBackWake":Z
    goto/16 :goto_8

    .line 173
    :cond_1d
    const/16 v42, 0x0

    .restart local v42    # "showMenuWake":Z
    goto/16 :goto_9

    .line 174
    :cond_1e
    const/16 v38, 0x0

    .restart local v38    # "showAssistWake":Z
    goto/16 :goto_a

    .line 175
    :cond_1f
    const/16 v37, 0x0

    .restart local v37    # "showAppSwitchWake":Z
    goto/16 :goto_b

    .line 176
    :cond_20
    const/16 v40, 0x0

    .restart local v40    # "showCameraWake":Z
    goto/16 :goto_c

    .line 177
    :cond_21
    const/16 v43, 0x0

    .restart local v43    # "showVolumeWake":Z
    goto/16 :goto_d

    .line 237
    .restart local v3    # "appSwitchCategory":Landroid/preference/PreferenceCategory;
    .restart local v4    # "assistCategory":Landroid/preference/PreferenceCategory;
    .restart local v5    # "backCategory":Landroid/preference/PreferenceCategory;
    .restart local v7    # "cameraCategory":Landroid/preference/PreferenceCategory;
    .restart local v17    # "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    .restart local v18    # "hasAnyBindableKey":Z
    .restart local v28    # "homeCategory":Landroid/preference/PreferenceCategory;
    .restart local v30    # "menuCategory":Landroid/preference/PreferenceCategory;
    .restart local v32    # "powerCategory":Landroid/preference/PreferenceCategory;
    .restart local v45    # "volumeCategory":Landroid/preference/PreferenceCategory;
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/settings/ButtonSettings;->updateDisableNavkeysOption()V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v47

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    goto/16 :goto_f

    .line 242
    .restart local v31    # "needsNavigationBar":Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    .line 256
    .end local v31    # "needsNavigationBar":Z
    .restart local v8    # "cameraDoubleTapPowerDisabled":I
    :cond_24
    const/16 v47, 0x0

    goto/16 :goto_10

    .line 258
    .end local v8    # "cameraDoubleTapPowerDisabled":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    goto/16 :goto_11

    .line 262
    :cond_26
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_11

    .line 301
    :cond_27
    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_12

    .line 310
    :cond_28
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_13

    .line 324
    .restart local v34    # "pressAction":I
    :cond_29
    const/16 v47, 0x3

    goto/16 :goto_14

    .line 329
    .end local v34    # "pressAction":I
    :cond_2a
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    .line 347
    :cond_2b
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_16

    .line 366
    :cond_2c
    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 383
    :cond_2d
    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 401
    .restart local v9    # "cursorControlAction":I
    .restart local v44    # "swapVolumeKeys":I
    :cond_2e
    const/16 v47, 0x0

    goto/16 :goto_19

    .line 404
    .end local v9    # "cursorControlAction":I
    .end local v44    # "swapVolumeKeys":I
    :cond_2f
    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1a

    .line 410
    :cond_30
    const/16 v16, 0x0

    .restart local v16    # "forceNavbar":Z
    goto/16 :goto_1b

    .line 412
    :cond_31
    const/16 v25, 0x1

    .local v25, "hasNavBar":Z
    goto/16 :goto_1c

    .line 422
    .end local v25    # "hasNavBar":Z
    :cond_32
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1d

    .line 424
    .end local v16    # "forceNavbar":Z
    :catch_0
    move-exception v15

    .line 425
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v47, "SystemSettings"

    const-string/jumbo v48, "Error getting navigation bar status"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 431
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v6    # "backlight":Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;
    :cond_33
    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1e

    .line 437
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    const-string/jumbo v48, "camera_wake_screen"

    invoke-virtual/range {v47 .. v48}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 230
    .end local v6    # "backlight":Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;
    .restart local v31    # "needsNavigationBar":Z
    :catch_1
    move-exception v15

    .restart local v15    # "e":Landroid/os/RemoteException;
    goto/16 :goto_e
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 571
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    .line 572
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 573
    const-string/jumbo v6, "key_home_long_press_action"

    .line 572
    invoke-direct {p0, v4, p2, v6}, Lcom/cyanogenmod/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    return v5

    .line 575
    :cond_0
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_1

    .line 576
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 577
    const-string/jumbo v6, "key_home_double_tap_action"

    .line 576
    invoke-direct {p0, v4, p2, v6}, Lcom/cyanogenmod/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    return v5

    .line 579
    :cond_1
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    .line 580
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 581
    const-string/jumbo v6, "key_menu_action"

    .line 580
    invoke-direct {p0, v4, p2, v6}, Lcom/cyanogenmod/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    return v5

    .line 583
    :cond_2
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_3

    .line 584
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 585
    const-string/jumbo v6, "key_menu_long_press_action"

    .line 584
    invoke-direct {p0, v4, p2, v6}, Lcom/cyanogenmod/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    return v5

    .line 587
    :cond_3
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_4

    .line 588
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 589
    const-string/jumbo v6, "key_assist_action"

    .line 588
    invoke-direct {p0, v4, p2, v6}, Lcom/cyanogenmod/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    return v5

    .line 591
    :cond_4
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_5

    .line 592
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 593
    const-string/jumbo v6, "key_assist_long_press_action"

    .line 592
    invoke-direct {p0, v4, p2, v6}, Lcom/cyanogenmod/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    return v5

    .line 595
    :cond_5
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_6

    .line 596
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 597
    const-string/jumbo v6, "key_app_switch_action"

    .line 596
    invoke-direct {p0, v4, p2, v6}, Lcom/cyanogenmod/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    return v5

    .line 599
    :cond_6
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_7

    .line 600
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 601
    const-string/jumbo v6, "key_app_switch_long_press_action"

    .line 600
    invoke-direct {p0, v4, p2, v6}, Lcom/cyanogenmod/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    return v5

    .line 603
    :cond_7
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_8

    .line 604
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 605
    const-string/jumbo v6, "volume_key_cursor_control"

    .line 604
    invoke-direct {p0, v4, p2, v6}, Lcom/cyanogenmod/settings/ButtonSettings;->handleSystemActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    return v5

    .line 607
    :cond_8
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_a

    move-object v1, p2

    .line 610
    check-cast v1, Ljava/lang/String;

    .line 611
    .local v1, "putString":Ljava/lang/String;
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 612
    .local v0, "index":I
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v2, v4, v0

    .line 614
    .local v2, "summary":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 616
    const/4 v1, 0x0

    .line 618
    .end local v1    # "putString":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 619
    const-string/jumbo v6, "recents_long_press_activity"

    .line 618
    invoke-static {v4, v6, v1}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 620
    return v5

    .line 621
    .end local v0    # "index":I
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_a
    iget-object v6, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_c

    .line 622
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 623
    .local v3, "value":Z
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "camera_double_tap_power_gesture_disabled"

    .line 624
    if-eqz v3, :cond_b

    .line 623
    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 625
    return v5

    :cond_b
    move v4, v5

    .line 624
    goto :goto_0

    .line 627
    .end local v3    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_c
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 697
    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_3

    .line 698
    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 699
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/cyanogenmod/internal/util/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 700
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 701
    const-string/jumbo v2, "swap_volume_keys_on_rotation"

    .line 700
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 724
    .end local v0    # "value":I
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 699
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0

    .end local v0    # "value":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0

    .line 702
    .end local v0    # "value":I
    :cond_3
    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_4

    .line 703
    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 704
    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 705
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    .line 706
    invoke-direct {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->updateDisableNavkeysOption()V

    .line 707
    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    .line 708
    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/cyanogenmod/settings/ButtonSettings$1;

    invoke-direct {v2, p0}, Lcom/cyanogenmod/settings/ButtonSettings$1;-><init>(Lcom/cyanogenmod/settings/ButtonSettings;)V

    .line 715
    const-wide/16 v4, 0x3e8

    .line 708
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 716
    :cond_4
    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_5

    .line 717
    invoke-direct {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    .line 718
    return v3

    .line 719
    :cond_5
    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->handleToggleHomeButtonAnswersCallPreferenceClick()V

    .line 721
    return v3
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 453
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 456
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 458
    const-string/jumbo v5, "incall_power_button_behavior"

    .line 457
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 461
    .local v2, "incallPowerBehavior":I
    if-ne v2, v7, :cond_2

    const/4 v3, 0x1

    .line 462
    .local v3, "powerButtonEndsCall":Z
    :goto_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 466
    .end local v2    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    :cond_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 468
    const-string/jumbo v5, "ring_home_button_behavior"

    .line 467
    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 471
    .local v1, "incallHomeBehavior":I
    if-ne v1, v7, :cond_3

    const/4 v0, 0x1

    .line 472
    .local v0, "homeButtonAnswersCall":Z
    :goto_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 452
    .end local v0    # "homeButtonAnswersCall":Z
    .end local v1    # "incallHomeBehavior":I
    :cond_1
    return-void

    .line 461
    .restart local v2    # "incallPowerBehavior":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "powerButtonEndsCall":Z
    goto :goto_0

    .line 471
    .end local v2    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    .restart local v1    # "incallHomeBehavior":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "homeButtonAnswersCall":Z
    goto :goto_1
.end method
