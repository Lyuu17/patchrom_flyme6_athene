.class public Lcom/cyanogenmod/settings/SecuritySettings;
.super Lcom/cyanogenmod/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field protected static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mChooseLockSettingsHelper:Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDirectlyShow:Landroid/preference/SwitchPreference;

.field private mFilterType:I

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenDisabledPreference:Landroid/preference/Preference;

.field private mOwnerInfoPref:Landroid/preference/Preference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSmsSecurityCheck:Landroid/preference/ListPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mVisibleDots:Landroid/preference/SwitchPreference;

.field private mVisibleErrorPattern:Landroid/preference/SwitchPreference;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    sput-object v0, Lcom/cyanogenmod/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 132
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lock_after_timeout"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "visiblepattern"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "visible_error_pattern"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "visibledots"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "directlyshow"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "power_button_instantly_locks"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "show_password"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_install_applications"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 132
    sput-object v0, Lcom/cyanogenmod/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 139
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    .line 936
    new-instance v0, Lcom/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    .line 935
    sput-object v0, Lcom/cyanogenmod/settings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mFilterType:I

    .line 80
    return-void
.end method

.method private addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V
    .locals 10
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    .line 552
    iget-object v6, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 554
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/cyanogenmod/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 555
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 556
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 558
    .local v0, "agent":Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 559
    .local v5, "trustAgentPreference":Landroid/preference/Preference;
    const-string/jumbo v6, "trust_agent"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 560
    iget-object v6, v0, Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v6, v0, Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 563
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 564
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 565
    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 568
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 570
    iget-boolean v6, v0, Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    if-eqz v6, :cond_1

    .line 571
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 572
    const v6, 0x7f0c0e1e

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 555
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    :cond_1
    if-nez v2, :cond_0

    .line 574
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 575
    const v6, 0x7f0c058a

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 551
    .end local v0    # "agent":Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 43

    .prologue
    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    .line 255
    .local v27, "root":Landroid/preference/PreferenceScreen;
    if-eqz v27, :cond_0

    .line 256
    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 258
    :cond_0
    const v39, 0x7f080049

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 265
    .local v24, "pm":Landroid/content/pm/PackageManager;
    sget v39, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    if-nez v39, :cond_13

    const/16 v39, 0x1

    :goto_0
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mIsPrimary:Z

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    .line 268
    const-string/jumbo v40, "lockscreen_internally_enabled"

    const/16 v41, 0x1

    const/16 v42, 0x0

    .line 267
    invoke-static/range {v39 .. v42}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v39

    .line 268
    const/16 v40, 0x1

    .line 267
    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_1

    .line 270
    new-instance v39, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    move-object/from16 v39, v0

    const-string/jumbo v40, "lockscreen_enabled_internally"

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    move-object/from16 v39, v0

    const v40, 0x7f0c02da

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setTitle(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    move-object/from16 v39, v0

    const v40, 0x7f0c02db

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setSummary(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    move-object/from16 v39, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 277
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mFilterType:I

    move/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_14

    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mFilterType:I

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_15

    const/16 v29, 0x1

    .line 279
    .local v29, "securityOrExternal":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mFilterType:I

    move/from16 v39, v0

    if-eqz v39, :cond_16

    .line 280
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mFilterType:I

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_17

    const/16 v20, 0x1

    .line 282
    .local v20, "lockscreenOrExternal":Z
    :goto_2
    if-eqz v20, :cond_2

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v40, v0

    invoke-static/range {v39 .. v40}, Lcom/cyanogenmod/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v26

    .line 285
    .local v26, "resid":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 287
    const-string/jumbo v39, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v39, v0

    if-eqz v39, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v39, v0

    new-instance v40, Lcom/cyanogenmod/settings/SecuritySettings$1;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings$1;-><init>(Lcom/cyanogenmod/settings/SecuritySettings;)V

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 299
    .end local v26    # "resid":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v39, v0

    if-eqz v39, :cond_3

    if-eqz v29, :cond_3

    .line 300
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v39

    if-eqz v39, :cond_18

    .line 302
    const v39, 0x7f08004b

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 309
    :cond_3
    :goto_3
    if-eqz v20, :cond_8

    .line 312
    const-string/jumbo v39, "security_category"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    .line 311
    check-cast v28, Landroid/preference/PreferenceGroup;

    .line 313
    .local v28, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v28, :cond_4

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;)V

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V

    .line 319
    :cond_4
    const-string/jumbo v39, "lock_after_timeout"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/ListPreference;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v39, v0

    if-eqz v39, :cond_5

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->setupLockAfterPreference()V

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 326
    :cond_5
    const-string/jumbo v39, "directlyshow"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mDirectlyShow:Landroid/preference/SwitchPreference;

    .line 329
    const-string/jumbo v39, "visiblepattern"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    .line 333
    const-string/jumbo v39, "visible_error_pattern"

    .line 332
    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    .line 336
    const-string/jumbo v39, "visibledots"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    .line 340
    const-string/jumbo v39, "power_button_instantly_locks"

    .line 339
    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 341
    const-string/jumbo v39, "trust_agent"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    .line 342
    .local v37, "trustAgentPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v39, v0

    if-eqz v39, :cond_6

    .line 343
    if-eqz v37, :cond_6

    .line 344
    invoke-virtual/range {v37 .. v37}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/lang/CharSequence;->length()I

    move-result v39

    if-lez v39, :cond_6

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    .line 347
    invoke-virtual/range {v37 .. v37}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v41

    const/16 v42, 0x0

    aput-object v41, v40, v42

    .line 346
    const v41, 0x7f0c0883

    .line 345
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    :cond_6
    const-string/jumbo v39, "general_category"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 351
    check-cast v11, Landroid/preference/PreferenceGroup;

    .line 353
    .local v11, "generalCategory":Landroid/preference/PreferenceGroup;
    const-string/jumbo v39, "org.cyanogenmod.livelockscreen"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_7

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/cyanogenmod/settings/Utils;->isUserOwner()Z

    move-result v39

    if-eqz v39, :cond_7

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 355
    const v40, 0x7f10001a

    .line 354
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    .line 357
    .local v22, "moveToTop":Z
    if-eqz v22, :cond_19

    move-object/from16 v12, v27

    .line 358
    .local v12, "groupToAddTo":Landroid/preference/PreferenceGroup;
    :goto_4
    new-instance v19, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 359
    .local v19, "liveLockPreference":Landroid/preference/Preference;
    new-instance v39, Landroid/content/Intent;

    const-string/jumbo v40, "cyanogenmod.intent.action.OPEN_LIVE_LOCKSCREEN_SETTINGS"

    invoke-direct/range {v39 .. v40}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 360
    const/16 v39, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->setLiveLockScreenPreferenceTitleAndSummary(Landroid/preference/Preference;)V

    .line 362
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 366
    .end local v12    # "groupToAddTo":Landroid/preference/PreferenceGroup;
    .end local v19    # "liveLockPreference":Landroid/preference/Preference;
    .end local v22    # "moveToTop":Z
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 367
    const v40, 0x11200bf

    .line 366
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 368
    .local v6, "blurSupported":Z
    if-nez v6, :cond_8

    if-eqz v11, :cond_8

    .line 369
    const-string/jumbo v39, "lock_screen_blur_enabled"

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 370
    .local v5, "blurEnabledPref":Landroid/preference/Preference;
    if-eqz v5, :cond_8

    invoke-virtual {v11, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    .end local v5    # "blurEnabledPref":Landroid/preference/Preference;
    .end local v6    # "blurSupported":Z
    .end local v11    # "generalCategory":Landroid/preference/PreferenceGroup;
    .end local v28    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v37    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_8
    if-eqz v29, :cond_11

    .line 376
    const v39, 0x7f08004e

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-string/jumbo v40, "carrier_config"

    invoke-virtual/range {v39 .. v40}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 379
    check-cast v7, Landroid/telephony/CarrierConfigManager;

    .line 381
    .local v7, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v7}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 382
    .local v4, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v39, "sim_lock"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    .line 383
    .local v16, "iccLockGroup":Landroid/preference/PreferenceGroup;
    const-string/jumbo v39, "sim_lock_settings"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 385
    .local v15, "iccLock":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v39, v0

    if-eqz v39, :cond_9

    .line 386
    const-string/jumbo v39, "hide_sim_lock_settings_bool"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v39

    .line 385
    if-eqz v39, :cond_1a

    .line 387
    :cond_9
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 438
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    .line 439
    const-string/jumbo v40, "lock_to_app_enabled"

    const/16 v41, 0x0

    .line 438
    invoke-static/range {v39 .. v41}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    if-eqz v39, :cond_b

    .line 440
    const-string/jumbo v39, "screen_pinning_settings"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x7f0c0dd4

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 440
    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    :cond_b
    const-string/jumbo v39, "android.hardware.telephony"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 446
    .local v18, "isTelephony":Z
    if-eqz v18, :cond_c

    .line 447
    const-string/jumbo v39, "sms_security_check_limit"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/ListPreference;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 450
    .local v33, "smsSecurityCheck":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->updateSmsSecuritySummary(I)V

    .line 454
    .end local v33    # "smsSecurityCheck":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-string/jumbo v40, "user"

    invoke-virtual/range {v39 .. v40}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/UserManager;

    .line 459
    .local v38, "um":Landroid/os/UserManager;
    const-string/jumbo v39, "android.security.keystore"

    invoke-static/range {v39 .. v39}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v39

    if-eqz v39, :cond_d

    .line 461
    const-string/jumbo v39, "show_password"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 462
    const-string/jumbo v39, "credentials_reset"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 465
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 467
    const-string/jumbo v39, "no_config_credentials"

    invoke-virtual/range {v38 .. v39}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_23

    .line 468
    const-string/jumbo v39, "credential_storage_type"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 471
    .local v8, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v39

    if-eqz v39, :cond_22

    const v34, 0x7f0c0b02

    .line 473
    .local v34, "storageSummaryRes":I
    :goto_6
    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 485
    .end local v8    # "credentialStorageType":Landroid/preference/Preference;
    .end local v34    # "storageSummaryRes":I
    :cond_d
    :goto_7
    const-string/jumbo v39, "device_admin_category"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 484
    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 487
    .local v10, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string/jumbo v39, "toggle_install_applications"

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v39, v0

    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v40, v0

    sget v39, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v38 .. v39}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v39

    if-eqz v39, :cond_24

    const/16 v39, 0x0

    :goto_8
    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 492
    const-string/jumbo v39, "no_install_unknown_sources"

    invoke-virtual/range {v38 .. v39}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_e

    .line 493
    const-string/jumbo v39, "no_install_apps"

    invoke-virtual/range {v38 .. v39}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v39

    .line 492
    if-eqz v39, :cond_f

    .line 494
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 499
    :cond_f
    const-string/jumbo v39, "advanced_security"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 500
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_10

    .line 501
    const-string/jumbo v39, "manage_trust_agents"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 502
    .local v21, "manageAgents":Landroid/preference/Preference;
    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v39, v0

    sget v40, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v39 .. v40}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v39

    if-eqz v39, :cond_25

    .line 511
    .end local v21    # "manageAgents":Landroid/preference/Preference;
    :cond_10
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/cyanogenmod/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/cyanogenmod/settings/search/Index;

    move-result-object v39

    .line 512
    const-class v40, Lcom/cyanogenmod/settings/SecuritySettings;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x1

    const/16 v42, 0x1

    .line 511
    invoke-virtual/range {v39 .. v42}, Lcom/cyanogenmod/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 514
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v4    # "b":Landroid/os/PersistableBundle;
    .end local v7    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v10    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v15    # "iccLock":Landroid/preference/Preference;
    .end local v16    # "iccLockGroup":Landroid/preference/PreferenceGroup;
    .end local v18    # "isTelephony":Z
    .end local v38    # "um":Landroid/os/UserManager;
    :cond_11
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a
    sget-object v39, Lcom/cyanogenmod/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    if-ge v14, v0, :cond_26

    .line 515
    sget-object v39, Lcom/cyanogenmod/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v39, v39, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    .line 516
    .local v25, "pref":Landroid/preference/Preference;
    if-eqz v25, :cond_12

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 514
    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 265
    .end local v14    # "i":I
    .end local v20    # "lockscreenOrExternal":Z
    .end local v25    # "pref":Landroid/preference/Preference;
    .end local v29    # "securityOrExternal":Z
    :cond_13
    const/16 v39, 0x0

    goto/16 :goto_0

    .line 277
    :cond_14
    const/16 v29, 0x1

    .restart local v29    # "securityOrExternal":Z
    goto/16 :goto_1

    .line 278
    .end local v29    # "securityOrExternal":Z
    :cond_15
    const/16 v29, 0x0

    .restart local v29    # "securityOrExternal":Z
    goto/16 :goto_1

    .line 279
    :cond_16
    const/16 v20, 0x1

    .restart local v20    # "lockscreenOrExternal":Z
    goto/16 :goto_2

    .line 280
    .end local v20    # "lockscreenOrExternal":Z
    :cond_17
    const/16 v20, 0x0

    .restart local v20    # "lockscreenOrExternal":Z
    goto/16 :goto_2

    .line 305
    :cond_18
    const v39, 0x7f080054

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 357
    .restart local v11    # "generalCategory":Landroid/preference/PreferenceGroup;
    .restart local v22    # "moveToTop":Z
    .restart local v28    # "securityCategory":Landroid/preference/PreferenceGroup;
    .restart local v37    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_19
    move-object v12, v11

    .restart local v12    # "groupToAddTo":Landroid/preference/PreferenceGroup;
    goto/16 :goto_4

    .line 389
    .end local v11    # "generalCategory":Landroid/preference/PreferenceGroup;
    .end local v12    # "groupToAddTo":Landroid/preference/PreferenceGroup;
    .end local v22    # "moveToTop":Z
    .end local v28    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v37    # "trustAgentPreference":Landroid/preference/Preference;
    .restart local v4    # "b":Landroid/os/PersistableBundle;
    .restart local v7    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v15    # "iccLock":Landroid/preference/Preference;
    .restart local v16    # "iccLockGroup":Landroid/preference/PreferenceGroup;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v35

    .line 390
    .local v35, "subMgr":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v36

    .line 391
    .local v36, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v23

    .line 392
    .local v23, "numPhones":I
    const/4 v13, 0x0

    .line 394
    .local v13, "hasAnySim":Z
    const/4 v14, 0x0

    .end local v13    # "hasAnySim":Z
    .restart local v14    # "i":I
    :goto_b
    move/from16 v0, v23

    if-ge v14, v0, :cond_20

    .line 397
    const/16 v39, 0x1

    move/from16 v0, v23

    move/from16 v1, v39

    if-le v0, v1, :cond_1d

    .line 398
    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v32

    .line 399
    .local v32, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v32, :cond_1c

    .line 394
    .end local v32    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1b
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 403
    .restart local v32    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1c
    new-instance v25, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 404
    .restart local v25    # "pref":Landroid/preference/Preference;
    invoke-virtual {v15}, Landroid/preference/Preference;->getOrder()I

    move-result v39

    move-object/from16 v0, v25

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 405
    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    add-int/lit8 v40, v14, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    const/16 v41, 0x0

    aput-object v40, v39, v41

    const v40, 0x7f0c0363

    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v39

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-class v40, Lcom/cyanogenmod/settings/IccLockSettings;

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .local v17, "intent":Landroid/content/Intent;
    const-string/jumbo v39, "slot_id"

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v40

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    const-string/jumbo v39, "sub_display_name"

    .line 411
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v40

    .line 410
    move-object/from16 v0, v17

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 412
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 414
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 420
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v32    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_d
    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v39

    or-int v13, v13, v39

    .line 422
    .local v13, "hasAnySim":Z
    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v31

    .line 423
    .local v31, "simState":I
    const/16 v39, 0x1

    move/from16 v0, v31

    move/from16 v1, v39

    if-eq v0, v1, :cond_1f

    .line 424
    if-eqz v31, :cond_1f

    .line 425
    const/16 v39, 0x8

    move/from16 v0, v31

    move/from16 v1, v39

    if-eq v0, v1, :cond_1e

    const/16 v30, 0x1

    .line 426
    .local v30, "simPresent":Z
    :goto_e
    if-nez v30, :cond_1b

    .line 427
    const/16 v39, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 416
    .end local v13    # "hasAnySim":Z
    .end local v25    # "pref":Landroid/preference/Preference;
    .end local v30    # "simPresent":Z
    .end local v31    # "simState":I
    :cond_1d
    move-object/from16 v25, v15

    .restart local v25    # "pref":Landroid/preference/Preference;
    goto :goto_d

    .line 425
    .restart local v13    # "hasAnySim":Z
    .restart local v31    # "simState":I
    :cond_1e
    const/16 v30, 0x0

    .restart local v30    # "simPresent":Z
    goto :goto_e

    .line 423
    .end local v30    # "simPresent":Z
    :cond_1f
    const/16 v30, 0x0

    .restart local v30    # "simPresent":Z
    goto :goto_e

    .line 431
    .end local v13    # "hasAnySim":Z
    .end local v25    # "pref":Landroid/preference/Preference;
    .end local v30    # "simPresent":Z
    .end local v31    # "simState":I
    :cond_20
    if-nez v13, :cond_21

    .line 432
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 433
    :cond_21
    const/16 v39, 0x1

    move/from16 v0, v23

    move/from16 v1, v39

    if-le v0, v1, :cond_a

    .line 434
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 472
    .end local v14    # "i":I
    .end local v23    # "numPhones":I
    .end local v35    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v36    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v8    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v18    # "isTelephony":Z
    .restart local v38    # "um":Landroid/os/UserManager;
    :cond_22
    const v34, 0x7f0c0b03

    .restart local v34    # "storageSummaryRes":I
    goto/16 :goto_6

    .line 476
    .end local v8    # "credentialStorageType":Landroid/preference/Preference;
    .end local v34    # "storageSummaryRes":I
    :cond_23
    const-string/jumbo v39, "credentials_management"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 475
    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 477
    .local v9, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string/jumbo v39, "credentials_reset"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 478
    const-string/jumbo v39, "credentials_install"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 479
    const-string/jumbo v39, "credential_storage_type"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 491
    .end local v9    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v10    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_24
    const/16 v39, 0x1

    goto/16 :goto_8

    .line 503
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v21    # "manageAgents":Landroid/preference/Preference;
    :cond_25
    const/16 v39, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 504
    const v39, 0x7f0c058a

    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_9

    .line 519
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v4    # "b":Landroid/os/PersistableBundle;
    .end local v7    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v10    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v15    # "iccLock":Landroid/preference/Preference;
    .end local v16    # "iccLockGroup":Landroid/preference/PreferenceGroup;
    .end local v18    # "isTelephony":Z
    .end local v21    # "manageAgents":Landroid/preference/Preference;
    .end local v38    # "um":Landroid/os/UserManager;
    .restart local v14    # "i":I
    :cond_26
    return-object v27
.end method

.method private disableUnusableTimeouts(J)V
    .locals 13
    .param p1, "maxTimeout"    # J

    .prologue
    const/4 v9, 0x0

    .line 710
    iget-object v8, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 711
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 712
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 715
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 716
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 717
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v10, v0

    if-ne v8, v10, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v10, v7

    if-eq v8, v10, :cond_3

    .line 722
    :cond_2
    iget-object v10, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 723
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    .line 722
    invoke-virtual {v10, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 724
    iget-object v10, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 725
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    .line 724
    invoke-virtual {v10, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 726
    iget-object v8, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 727
    .local v6, "userPreference":I
    int-to-long v10, v6

    cmp-long v8, v10, p1

    if-gtz v8, :cond_3

    .line 728
    iget-object v8, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 735
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v10, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v10, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 709
    return-void

    :cond_4
    move v8, v9

    .line 735
    goto :goto_1
.end method

.method protected static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 582
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v7, Lcom/cyanogenmod/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 584
    const/16 v8, 0x80

    .line 583
    invoke-virtual {p0, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 585
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v7, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 587
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p2, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_1

    const/4 v0, 0x1

    .line 590
    .local v0, "disableTrustAgents":Z
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 609
    :cond_0
    :goto_1
    return-object v5

    .line 587
    .end local v0    # "disableTrustAgents":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "disableTrustAgents":Z
    goto :goto_0

    .line 591
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 592
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 593
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_4

    .line 591
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 594
    :cond_4
    invoke-static {v3, p0}, Lcom/cyanogenmod/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 596
    invoke-static {p0, v3}, Lcom/cyanogenmod/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v6

    .line 597
    .local v6, "trustAgentComponentInfo":Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v7, v6, Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_3

    .line 599
    invoke-static {v3}, Lcom/cyanogenmod/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v7

    .line 598
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 600
    iget-object v7, v6, Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 597
    if-nez v7, :cond_3

    .line 601
    if-eqz v0, :cond_5

    .line 602
    invoke-static {v3}, Lcom/cyanogenmod/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v7

    .line 601
    invoke-virtual {p2, v9, v7}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_5

    .line 603
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    .line 605
    :cond_5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "resid":I
    sget v1, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    sget v1, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const v0, 0x7f08004d

    .line 244
    :goto_0
    return v0

    .line 226
    :cond_0
    const v0, 0x7f08004a

    goto :goto_0

    .line 229
    :cond_1
    sget v1, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 231
    :sswitch_0
    const v0, 0x7f080050

    .line 232
    goto :goto_0

    .line 235
    :sswitch_1
    const v0, 0x7f080053

    .line 236
    goto :goto_0

    .line 240
    :sswitch_2
    const v0, 0x7f08004f

    .line 241
    goto :goto_0

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 613
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 614
    const-string/jumbo v2, "install_non_market_apps"

    .line 613
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;)V
    .locals 10
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    .line 523
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 524
    const-string/jumbo v7, "fingerprint"

    .line 523
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 525
    .local v3, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 526
    const-string/jumbo v6, "SecuritySettings"

    const-string/jumbo v7, "No fingerprint hardware detected!!"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void

    .line 529
    :cond_0
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 530
    .local v2, "fingerprintPreference":Landroid/preference/Preference;
    const-string/jumbo v6, "fingerprint_settings"

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 531
    const v6, 0x7f0c0506

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 532
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 533
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v5

    .line 534
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 536
    .local v1, "fingerprintCount":I
    :goto_0
    if-lez v1, :cond_2

    .line 537
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 539
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 538
    const v8, 0x7f110005

    .line 537
    invoke-virtual {v6, v8, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    const-class v6, Lcom/cyanogenmod/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "clazz":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 548
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 522
    return-void

    .line 534
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "fingerprintCount":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fingerprintCount":I
    goto :goto_0

    .line 543
    :cond_2
    const v6, 0x7f0c050b

    .line 542
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 544
    const-class v6, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/String;
    goto :goto_1
.end method

.method private setLiveLockScreenPreferenceTitleAndSummary(Landroid/preference/Preference;)V
    .locals 14
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v13, 0x0

    .line 900
    const v11, 0x7f0c038b

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 901
    .local v9, "title":Ljava/lang/String;
    const v11, 0x7f0c038c

    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 902
    .local v7, "summary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 904
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "cyanogenmod.intent.action.OPEN_LIVE_LOCKSCREEN_SETTINGS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v5, v11, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 905
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 906
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 907
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 909
    :try_start_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 910
    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    .line 909
    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 911
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 912
    .local v6, "res":Landroid/content/res/Resources;
    const-string/jumbo v11, "live_lock_screen_title"

    const-string/jumbo v12, "string"

    .line 913
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 912
    invoke-virtual {v6, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 914
    .local v10, "titleId":I
    const-string/jumbo v11, "live_lock_screen_summary"

    const-string/jumbo v12, "string"

    .line 915
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 914
    invoke-virtual {v6, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 916
    .local v8, "summaryId":I
    if-eqz v10, :cond_1

    if-eqz v8, :cond_1

    .line 917
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 918
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 928
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "info$iterator":Ljava/util/Iterator;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v8    # "summaryId":I
    .end local v10    # "titleId":I
    :cond_1
    :goto_0
    invoke-virtual {p1, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 929
    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 899
    return-void

    .line 920
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "info$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 619
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    return-void

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    .line 624
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 623
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    return-void

    .line 624
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 666
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 667
    const-string/jumbo v7, "lock_screen_lock_after_timeout"

    const-wide/16 v8, 0x1388

    .line 666
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 668
    .local v2, "currentTimeout":J
    iget-object v6, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 669
    iget-object v6, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 670
    iget-object v6, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 672
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_off_timeout"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 671
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v4, v6

    .line 673
    .local v4, "displayTimeout":J
    cmp-long v6, v0, v12

    if-lez v6, :cond_0

    .line 677
    sub-long v6, v0, v4

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/cyanogenmod/settings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 664
    :cond_0
    return-void

    .line 670
    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0    # "adminTimeout":J
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 684
    const-string/jumbo v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    .line 683
    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 685
    .local v2, "currentTimeout":J
    iget-object v9, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 686
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 687
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 688
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 689
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 690
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 691
    move v0, v4

    .line 688
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 695
    .end local v6    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 696
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 697
    aget-object v9, v8, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 698
    iget-object v9, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 699
    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 698
    const v11, 0x7f0c04f3

    invoke-virtual {p0, v11, v10}, Lcom/cyanogenmod/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 681
    :goto_1
    return-void

    .line 701
    :cond_2
    iget-object v9, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 702
    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 701
    const v11, 0x7f0c04f4

    invoke-virtual {p0, v11, v10}, Lcom/cyanogenmod/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 705
    :cond_3
    iget-object v9, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0c04f2

    invoke-virtual {p0, v11, v10}, Lcom/cyanogenmod/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateSmsSecuritySummary(I)V
    .locals 4
    .param p1, "selection"    # I

    .prologue
    const/4 v3, 0x0

    .line 658
    if-lez p1, :cond_0

    .line 659
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0c0317

    invoke-virtual {p0, v2, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "message":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 657
    return-void

    .line 660
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0318

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 629
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 630
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c07e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 631
    const v1, 0x1080027

    .line 629
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 632
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0892

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 633
    const v1, 0x1040013

    .line 629
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 634
    const v1, 0x1040009

    .line 629
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 627
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 889
    const v0, 0x7f0c0cd5

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 829
    invoke-super {p0, p1, p2, p3}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 830
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 833
    iput-object v1, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 835
    :cond_0
    return-void

    .line 837
    :cond_1
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 828
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 640
    iget-object v1, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 641
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 642
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 643
    iget-object v1, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 639
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 641
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "turnOn":Z
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 187
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 188
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 189
    const-class v5, Lcom/cyanogenmod/settings/Settings$LockScreenSettingsActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 190
    const/4 v4, 0x0

    iput v4, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mFilterType:I

    .line 198
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 200
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    const-string/jumbo v4, ":settings:show_fragment_args"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 201
    const-string/jumbo v4, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 202
    const/4 v4, 0x2

    iput v4, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mFilterType:I

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 207
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 209
    const-string/jumbo v4, "device_policy"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 211
    new-instance v4, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

    .line 213
    if-eqz p1, :cond_2

    .line 214
    const-string/jumbo v4, "trust_agent_click_intent"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 213
    if-eqz v4, :cond_2

    .line 215
    const-string/jumbo v4, "trust_agent_click_intent"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 182
    :cond_2
    return-void

    .line 192
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 193
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v4, "filter_type"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mFilterType:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 651
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 652
    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 650
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 842
    const/4 v4, 0x1

    .line 843
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 845
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v7, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;->cmUtils()Lorg/cyanogenmod/internal/util/CmLockPatternUtils;

    move-result-object v0

    .line 846
    .local v0, "cmLockPatternUtils":Lorg/cyanogenmod/internal/util/CmLockPatternUtils;
    const-string/jumbo v7, "lock_after_timeout"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 847
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 849
    .local v6, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 850
    const-string/jumbo v8, "lock_screen_lock_after_timeout"

    .line 849
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 884
    .end local v6    # "timeout":I
    :cond_0
    :goto_1
    return v4

    .line 851
    .restart local v6    # "timeout":I
    :catch_0
    move-exception v1

    .line 852
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "SecuritySettings"

    const-string/jumbo v8, "could not persist lockAfter timeout setting"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 855
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v7, "directlyshow"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 856
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v7, v8}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->setPassToSecurityView(ZI)V

    goto :goto_1

    .line 857
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v7, "visiblepattern"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 858
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_1

    .line 859
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v7, "visible_error_pattern"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 860
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setShowErrorPath(ZI)V

    goto :goto_1

    .line 861
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v7, "visibledots"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 862
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleDotsEnabled(ZI)V

    goto :goto_1

    .line 863
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v7, "power_button_instantly_locks"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 864
    iget-object v7, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    sget v9, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_1

    .line 865
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v7, "show_password"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 866
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_password"

    move-object v7, p2

    .line 867
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    .line 866
    :goto_2
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 868
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto/16 :goto_1

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    move v7, v8

    .line 867
    goto :goto_2

    .line 869
    :cond_8
    const-string/jumbo v7, "toggle_install_applications"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 870
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 871
    iget-object v7, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 872
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->warnAppInstallation()V

    .line 874
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 876
    :cond_9
    invoke-direct {p0, v8}, Lcom/cyanogenmod/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_1

    .line 878
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    const-string/jumbo v7, "sms_security_check_limit"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 879
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 880
    .local v5, "smsSecurityCheck":I
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sms_outgoing_check_max_count"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 882
    invoke-direct {p0, v5}, Lcom/cyanogenmod/settings/SecuritySettings;->updateSmsSecuritySummary(I)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 795
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 796
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 798
    const v3, 0x7f0c054d

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    .line 797
    invoke-virtual/range {v0 .. v5}, Lcom/cyanogenmod/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 821
    :cond_0
    :goto_0
    return v9

    .line 799
    :cond_1
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    new-instance v7, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 802
    .local v7, "helper":Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 804
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x7e

    .line 803
    invoke-virtual {v7, v1, v0}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    .line 805
    .local v6, "confirmationLaunched":Z
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 808
    iput-object v5, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 810
    .end local v6    # "confirmationLaunched":Z
    .end local v7    # "helper":Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;
    :cond_2
    const-string/jumbo v0, "lockscreen_enabled_internally"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 811
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 812
    const-string/jumbo v1, "lockscreen_internally_enabled"

    .line 813
    const/4 v2, -0x2

    .line 811
    invoke-static {v0, v1, v9, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 814
    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 815
    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    .line 816
    const v1, 0x7f0c02dc

    .line 815
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 819
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 748
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 752
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 754
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 755
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;->cmUtils()Lorg/cyanogenmod/internal/util/CmLockPatternUtils;

    move-result-object v0

    .line 756
    .local v0, "cmLockPatternUtils":Lorg/cyanogenmod/internal/util/CmLockPatternUtils;
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mDirectlyShow:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 757
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mDirectlyShow:Landroid/preference/SwitchPreference;

    sget v5, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v5}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->shouldPassToSecurityView(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 759
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 760
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    sget v5, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 762
    :cond_1
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 763
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    sget v5, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isShowErrorPath(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 765
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 766
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    sget v5, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleDotsEnabled(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 768
    :cond_3
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 769
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 770
    sget v5, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    .line 769
    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 773
    :cond_4
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    .line 774
    iget-object v5, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 775
    const-string/jumbo v6, "show_password"

    .line 774
    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 778
    :cond_5
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_6

    .line 779
    iget-object v2, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 782
    :cond_6
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SecuritySettings;->updateOwnerInfo()V

    .line 747
    return-void

    :cond_7
    move v2, v4

    .line 774
    goto :goto_0

    :cond_8
    move v4, v3

    .line 779
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 740
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 741
    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 742
    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 739
    :cond_0
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 787
    iget-object v1, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/cyanogenmod/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 785
    :cond_0
    return-void

    .line 789
    :cond_1
    const v0, 0x7f0c04f9

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
