.class public Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;
.super Lcom/cyanogenmod/settings/SettingsPreferenceFragment;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    }
.end annotation


# instance fields
.field private mApplicationPrefList:Landroid/preference/PreferenceGroup;

.field private mAutoGenerateColors:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

.field private mCallPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

.field private mCustomEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

.field private mDefaultColor:I

.field private mDefaultLedOff:I

.field private mDefaultLedOn:I

.field private mDefaultPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

.field private mEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

.field private mLedCanPulse:Z

.field private mMenu:Landroid/view/Menu;

.field private mMultiColorLed:Z

.field private mMultipleLedsEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

.field private mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

.field private mPackageAdapter:Lcom/cyanogenmod/settings/cyanogenmod/PackageListAdapter;

.field private mPackageList:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnLightsPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

.field private mVoicemailPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;


# direct methods
.method static synthetic -wrap0(Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->removeCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addCustomApplicationPref(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    .line 336
    .local v1, "pkg":Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    if-nez v1, :cond_0

    .line 337
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getInitialColorForPackage(Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, "color":I
    new-instance v1, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    .end local v1    # "pkg":Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 339
    .restart local v1    # "pkg":Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 341
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 334
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method private getInitialColorForPackage(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 320
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 321
    const-string/jumbo v7, "notification_light_color_auto"

    iget-boolean v4, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v4, :cond_1

    move v4, v5

    .line 320
    :goto_0
    invoke-static {v6, v7, v4}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 322
    .local v0, "autoColor":Z
    :goto_1
    iget v1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 323
    .local v1, "color":I
    if-eqz v0, :cond_0

    .line 325
    :try_start_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 326
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcyanogenmod/util/ColorUtils;->generateAlertColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 331
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_2
    return v1

    .line 321
    .end local v0    # "autoColor":Z
    .end local v1    # "color":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 320
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "autoColor":Z
    goto :goto_1

    .line 327
    .restart local v1    # "color":I
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method private parsePackageList()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 354
    const-string/jumbo v6, "notification_light_pulse_custom_values"

    .line 353
    invoke-static {v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "baseString":Ljava/lang/String;
    iget-object v5, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 357
    return v4

    .line 360
    :cond_0
    iput-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 361
    iget-object v5, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 363
    if-eqz v1, :cond_3

    .line 364
    const-string/jumbo v5, "\\|"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "array":[Ljava/lang/String;
    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 366
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 365
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 369
    :cond_2
    invoke-static {v2}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->fromString(Ljava/lang/String;)Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    move-result-object v3

    .line 370
    .local v3, "pkg":Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    if-eqz v3, :cond_1

    .line 371
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    iget-object v7, v3, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 376
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "pkg":Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method private refreshCustomApplicationPrefs()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 278
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->parsePackageList()Z

    move-result v9

    if-nez v9, :cond_0

    .line 279
    return-void

    .line 283
    :cond_0
    iget-object v9, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v9, :cond_2

    .line 284
    iget-object v9, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 286
    iget-object v9, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    .line 288
    .local v3, "pkg":Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    :try_start_0
    iget-object v9, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v3, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    .line 289
    const/16 v11, 0x80

    .line 288
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 291
    .local v2, "info":Landroid/content/pm/PackageInfo;
    new-instance v6, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iget-object v9, v3, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v3, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v3, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v6, v0, v9, v10, v11}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;III)V

    .line 293
    .local v6, "pref":Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    iget-object v9, v3, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setKey(Ljava/lang/String;)V

    .line 294
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 296
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setPersistent(Z)V

    .line 297
    invoke-virtual {v6, p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    iget-object v9, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "pref":Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 306
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "pkg":Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    :cond_1
    iget-object v9, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 307
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 308
    const v10, 0x7f0c0136

    .line 307
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "summary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 310
    const v10, 0x7f0c012a

    .line 309
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 311
    .local v8, "useCustom":Ljava/lang/String;
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 312
    .local v5, "pref":Landroid/preference/Preference;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v12

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 314
    iget-object v9, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 275
    .end local v4    # "pkg$iterator":Ljava/util/Iterator;
    .end local v5    # "pref":Landroid/preference/Preference;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v8    # "useCustom":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private refreshDefault()V
    .locals 12

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 238
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v10, "notification_light_pulse_default_color"

    iget v11, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 237
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 240
    .local v3, "color":I
    const-string/jumbo v10, "notification_light_pulse_default_led_on"

    iget v11, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 239
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 242
    .local v6, "timeOn":I
    const-string/jumbo v10, "notification_light_pulse_default_led_off"

    iget v11, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 241
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 244
    .local v5, "timeOff":I
    iget-object v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v3, v6, v5}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 247
    iget-object v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_0

    .line 249
    const-string/jumbo v10, "notification_light_pulse_call_color"

    iget v11, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 248
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 251
    .local v0, "callColor":I
    const-string/jumbo v10, "notification_light_pulse_call_led_on"

    iget v11, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 250
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 253
    .local v2, "callTimeOn":I
    const-string/jumbo v10, "notification_light_pulse_call_led_off"

    iget v11, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 252
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 255
    .local v1, "callTimeOff":I
    iget-object v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v0, v2, v1}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 258
    .end local v0    # "callColor":I
    .end local v1    # "callTimeOff":I
    .end local v2    # "callTimeOn":I
    :cond_0
    iget-object v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_1

    .line 260
    const-string/jumbo v10, "notification_light_pulse_vmail_color"

    iget v11, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 259
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 262
    .local v7, "vmailColor":I
    const-string/jumbo v10, "notification_light_pulse_vmail_led_on"

    iget v11, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 261
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 264
    .local v9, "vmailTimeOn":I
    const-string/jumbo v10, "notification_light_pulse_vmail_led_off"

    iget v11, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 263
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 266
    .local v8, "vmailTimeOff":I
    iget-object v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v7, v9, v8}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 269
    .end local v7    # "vmailColor":I
    .end local v8    # "vmailTimeOff":I
    .end local v9    # "vmailTimeOn":I
    :cond_1
    iget-boolean v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mLedCanPulse:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v10, :cond_3

    .line 270
    :cond_2
    const-string/jumbo v10, "applications_list"

    invoke-virtual {p0, v10}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    iput-object v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    .line 271
    iget-object v10, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 235
    :cond_3
    return-void
.end method

.method private removeCustomApplicationPref(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 348
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 345
    :cond_0
    return-void
.end method

.method private savePackageList(Z)V
    .locals 6
    .param p1, "preferencesUpdated"    # Z

    .prologue
    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v2, "settings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    .line 382
    .local v0, "app":Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    .end local v0    # "app":Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    :cond_0
    const-string/jumbo v4, "|"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "value":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 386
    iput-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 389
    const-string/jumbo v5, "notification_light_pulse_custom_values"

    .line 388
    invoke-static {v4, v5, v3}, Lcyanogenmod/providers/CMSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 379
    return-void
.end method

.method private setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V
    .locals 5
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "started"    # Z

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 220
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 221
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 222
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v4, v3, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 223
    check-cast v0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 224
    .local v0, "ap":Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    if-eqz p2, :cond_1

    .line 225
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->onStart()V

    .line 220
    .end local v0    # "ap":Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .restart local v0    # "ap":Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    .restart local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->onStop()V

    goto :goto_1

    .line 229
    .end local v0    # "ap":Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    :cond_2
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 230
    check-cast v3, Landroid/preference/PreferenceGroup;

    .end local v3    # "pref":Landroid/preference/Preference;
    invoke-direct {p0, v3, p2}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    goto :goto_1

    .line 218
    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 194
    const v0, -0x7ffffff5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v6, 0x7f080038

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 100
    .local v3, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 102
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 104
    .local v2, "nm":Landroid/app/NotificationManager;
    const-string/jumbo v6, "advanced_section"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 105
    .local v0, "mAdvancedPrefs":Landroid/preference/PreferenceGroup;
    const-string/jumbo v6, "general_section"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 109
    .local v1, "mGeneralPrefs":Landroid/preference/PreferenceGroup;
    const v6, 0x1060104

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 108
    iput v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 112
    const v6, 0x10e0056

    .line 111
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 114
    const v6, 0x10e0057

    .line 113
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 116
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->deviceLightsCan(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mLedCanPulse:Z

    .line 117
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->deviceLightsCan(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    .line 120
    const-string/jumbo v6, "notification_light_pulse"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 119
    check-cast v6, Lcom/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    .line 121
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v6, p0}, Lcom/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    const-string/jumbo v6, "default"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 126
    const-string/jumbo v6, "notification_light_color_auto"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 125
    check-cast v6, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 130
    const-string/jumbo v6, "notification_light_brightness_level"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 129
    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    .line 132
    const-string/jumbo v6, "notification_light_multiple_leds_enable"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 131
    check-cast v6, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 134
    const-string/jumbo v6, "notification_light_screen_on_enable"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 133
    check-cast v6, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 135
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v6, p0}, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    const-string/jumbo v6, "notification_light_pulse_custom_enable"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 136
    check-cast v6, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 139
    const v6, 0x3f070008

    .line 138
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 140
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :goto_0
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->deviceLightsCan(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 145
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :goto_1
    iget-boolean v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mLedCanPulse:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v6, :cond_5

    .line 153
    :cond_0
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v6, p0}, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v6, p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    :goto_2
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 159
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-eqz v6, :cond_6

    .line 160
    iget-boolean v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mLedCanPulse:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v6, :cond_6

    .line 163
    :cond_1
    const-string/jumbo v6, "missed_call"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 164
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v6, p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    const-string/jumbo v6, "voicemail"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 167
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v6, p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    :goto_3
    iget-boolean v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mLedCanPulse:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v6, :cond_7

    .line 173
    :cond_2
    const-string/jumbo v6, "applications_list"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    .line 174
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 178
    :goto_4
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 179
    new-instance v6, Lcom/cyanogenmod/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/cyanogenmod/settings/cyanogenmod/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/cyanogenmod/settings/cyanogenmod/PackageListAdapter;

    .line 181
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    .line 182
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    .line 184
    iget-boolean v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-nez v6, :cond_8

    .line 185
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->resetColors()V

    .line 186
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    :goto_5
    return-void

    .line 142
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 147
    :cond_4
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v6, p0}, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 150
    :cond_5
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 161
    .restart local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    const-string/jumbo v6, "phone_list"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_3

    .line 171
    :cond_7
    const-string/jumbo v6, "applications_list"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4

    .line 188
    :cond_8
    iget-object v6, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v6, p0}, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 512
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 514
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 534
    const/4 v1, 0x0

    .line 536
    :goto_0
    return-object v1

    .line 516
    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 517
    .local v2, "list":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/cyanogenmod/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 519
    const v3, 0x7f0c00cc

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 520
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 521
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 523
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$2;-><init>(Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 485
    iput-object p1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    .line 486
    iget-object v0, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c008d

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 487
    const v1, 0x7f020086

    .line 486
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 488
    const/4 v1, 0x6

    .line 486
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 484
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 447
    .local v1, "pref":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 448
    const/4 v2, 0x0

    return v2

    .line 451
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    const v3, 0x7f0c0113

    .line 451
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 453
    const v3, 0x7f0c0114

    .line 451
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 454
    const v3, 0x1010355

    .line 451
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 455
    new-instance v3, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$1;

    invoke-direct {v3, p0, v1}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$1;-><init>(Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;Landroid/preference/Preference;)V

    const v4, 0x104000a

    .line 451
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 461
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 451
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 463
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 464
    const/4 v2, 0x1

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 499
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 504
    return v1

    .line 501
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->showDialog(I)V

    .line 502
    const/4 v0, 0x1

    return v0

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-ne p1, v1, :cond_1

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 480
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    if-eq p1, v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    move-object v0, p1

    .line 475
    check-cast v0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 476
    .local v0, "lightPref":Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 477
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getOnValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getOffValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 476
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 493
    iget-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/cyanogenmod/CMSystemSettingSwitchPreference;->isChecked()Z

    move-result v0

    .line 494
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 492
    return-void

    .line 493
    :cond_0
    const/4 v0, 0x0

    .local v0, "enableAddButton":Z
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 200
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 201
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 202
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 203
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 198
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onStart()V

    .line 209
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    .line 207
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onStop()V

    .line 215
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    .line 213
    return-void
.end method

.method protected resetColors()V
    .locals 3

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 437
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "notification_light_pulse_default_color"

    iget v2, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 438
    const-string/jumbo v1, "notification_light_pulse_call_color"

    iget v2, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    const-string/jumbo v1, "notification_light_pulse_vmail_color"

    iget v2, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 433
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/Integer;
    .param p3, "timeon"    # Ljava/lang/Integer;
    .param p4, "timeoff"    # Ljava/lang/Integer;

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 403
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    const-string/jumbo v2, "notification_light_pulse_default_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    const-string/jumbo v2, "notification_light_pulse_default_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    const-string/jumbo v2, "notification_light_pulse_default_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 407
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 408
    return-void

    .line 409
    :cond_0
    const-string/jumbo v2, "missed_call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    const-string/jumbo v2, "notification_light_pulse_call_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    const-string/jumbo v2, "notification_light_pulse_call_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    const-string/jumbo v2, "notification_light_pulse_call_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 414
    return-void

    .line 415
    :cond_1
    const-string/jumbo v2, "voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 416
    const-string/jumbo v2, "notification_light_pulse_vmail_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 417
    const-string/jumbo v2, "notification_light_pulse_vmail_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    const-string/jumbo v2, "notification_light_pulse_vmail_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 420
    return-void

    .line 424
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    .line 425
    .local v0, "app":Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    if-eqz v0, :cond_3

    .line 426
    iput-object p2, v0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    .line 427
    iput-object p3, v0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    .line 428
    iput-object p4, v0, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    .line 429
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 400
    :cond_3
    return-void
.end method
