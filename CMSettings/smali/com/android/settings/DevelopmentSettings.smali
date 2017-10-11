.class public Lcom/cyanogenmod/settings/DevelopmentSettings;
.super Lcom/cyanogenmod/settings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/cyanogenmod/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/DevelopmentSettings$SystemPropPoker;,
        Lcom/cyanogenmod/settings/DevelopmentSettings$1;,
        Lcom/cyanogenmod/settings/DevelopmentSettings$2;
    }
.end annotation


# static fields
.field private static DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

.field private static final MOCK_LOCATION_APP_OPS:[I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private mAdbNotify:Landroid/preference/SwitchPreference;

.field private mAdbOverNetwork:Landroid/preference/SwitchPreference;

.field private mAdbTcpDialog:Landroid/app/Dialog;

.field private mAdvancedReboot:Landroid/preference/SwitchPreference;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorDurationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/SwitchPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/SwitchPreference;

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mColorModePreference:Lcom/cyanogenmod/settings/ColorModePreference;

.field private mColorTemperaturePreference:Landroid/preference/SwitchPreference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/preference/SwitchPreference;

.field private mDevelopmentShortcut:Landroid/preference/SwitchPreference;

.field private mDevelopmentTools:Landroid/preference/PreferenceScreen;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableMultiWindow:Landroid/preference/SwitchPreference;

.field private mEnableOemUnlock:Landroid/preference/SwitchPreference;

.field private mEnableTerminal:Landroid/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/preference/SwitchPreference;

.field private mForceMsaa:Landroid/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

.field private mKeepScreenOn:Landroid/preference/ListPreference;

.field private mKillAppLongpressBack:Landroid/preference/SwitchPreference;

.field private mLastEnabledState:Z

.field private mLegacyDhcpClient:Landroid/preference/SwitchPreference;

.field private mLogdSize:Landroid/preference/ListPreference;

.field private mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

.field private mMockLocationApp:Ljava/lang/String;

.field private mMockLocationAppPref:Landroid/preference/Preference;

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/SwitchPreference;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRootAccess:Landroid/preference/ListPreference;

.field private mRootAppops:Landroid/preference/Preference;

.field private mRootDialog:Landroid/app/Dialog;

.field private mSelectedRootValue:Ljava/lang/Object;

.field private mShowAllANRs:Landroid/preference/SwitchPreference;

.field private mShowCpuUsage:Landroid/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowTouches:Landroid/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/preference/ListPreference;

.field private mStrictMode:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

.field private mUSBAudio:Landroid/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUpdateRecovery:Landroid/preference/SwitchPreference;

.field private mUpdateRecoveryDialog:Landroid/app/Dialog;

.field private mUsbConfiguration:Landroid/preference/ListPreference;

.field private mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/preference/SwitchPreference;

.field private mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/preference/SwitchPreference;

.field private mWindowAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/cyanogenmod/settings/DevelopmentSettings;->showEnableMultiWindowPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/cyanogenmod/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/cyanogenmod/settings/DevelopmentSettings;Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->setEnableMultiWindow(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/cyanogenmod/settings/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/cyanogenmod/settings/DevelopmentSettings;Z)V
    .locals 0
    .param p1, "isUnlocked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateUsbConfigurationValues(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 212
    const-string/jumbo v0, "262144"

    sput-object v0, Lcom/cyanogenmod/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3a

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/cyanogenmod/settings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    .line 2377
    new-instance v0, Lcom/cyanogenmod/settings/DevelopmentSettings$2;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/DevelopmentSettings$2;-><init>()V

    .line 2376
    sput-object v0, Lcom/cyanogenmod/settings/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iput-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 2330
    new-instance v0, Lcom/cyanogenmod/settings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/DevelopmentSettings$1;-><init>(Lcom/cyanogenmod/settings/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    return-void
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 535
    .local v0, "pref":Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 537
    return-object v0
.end method

.method private confirmEnableMultiWindowMode()V
    .locals 3

    .prologue
    .line 1835
    new-instance v0, Lcom/cyanogenmod/settings/DevelopmentSettings$4;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/DevelopmentSettings$4;-><init>(Lcom/cyanogenmod/settings/DevelopmentSettings;)V

    .line 1843
    .local v0, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1844
    const v2, 0x7f0c0bcb

    .line 1843
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1845
    const v2, 0x7f0c0bcc

    .line 1843
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1846
    const v2, 0x7f0c08a9

    .line 1843
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1847
    const/high16 v2, 0x1040000

    .line 1843
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1848
    const/4 v2, 0x0

    .line 1843
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1834
    return-void
.end method

.method private confirmEnableOemUnlock()V
    .locals 3

    .prologue
    .line 1814
    new-instance v0, Lcom/cyanogenmod/settings/DevelopmentSettings$3;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/DevelopmentSettings$3;-><init>(Lcom/cyanogenmod/settings/DevelopmentSettings;)V

    .line 1824
    .local v0, "onEnableOemListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1825
    const v2, 0x7f0c097a

    .line 1824
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1826
    const v2, 0x7f0c097b

    .line 1824
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1827
    const v2, 0x7f0c08a9

    .line 1824
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1828
    const/high16 v2, 0x1040000

    .line 1824
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1829
    const/4 v2, 0x0

    .line 1824
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1813
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1193
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1194
    return v2

    .line 1196
    :cond_0
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1197
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 541
    if-eqz p1, :cond_0

    .line 542
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2213
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2215
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2217
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2218
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2219
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 2221
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 2222
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2223
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 2225
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 2226
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2227
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 2229
    :cond_3
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 2230
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2231
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 2233
    :cond_4
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    .line 2234
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2235
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    .line 2212
    :cond_5
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1119
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1120
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "adb_enabled"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 1121
    return v5

    .line 1123
    :cond_0
    const-string/jumbo v4, "package_verifier_enable"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 1124
    return v5

    .line 1126
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1127
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v3, "verification":Landroid/content/Intent;
    const-string/jumbo v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1129
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1130
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1131
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1132
    return v5

    .line 1135
    :cond_2
    return v6
.end method

.method private findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/cyanogenmod/settings/AnimationScalePreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/AnimationScalePreference;

    .line 549
    .local v0, "pref":Lcom/cyanogenmod/settings/AnimationScalePreference;
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/settings/AnimationScalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 550
    invoke-virtual {v0, p0}, Lcom/cyanogenmod/settings/AnimationScalePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 551
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    return-object v0
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 557
    .local v0, "pref":Landroid/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 558
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    return-object v0
.end method

.method public static initializeUpdateRecoveryOption(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1872
    const-string/jumbo v0, "persist.sys.recovery_update"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1873
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1872
    if-eqz v0, :cond_0

    .line 1874
    invoke-static {}, Lcom/cyanogenmod/settings/DevelopmentSettings;->resetUpdateRecoveryOptions()V

    .line 1871
    :cond_0
    return-void
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2367
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2368
    :catch_0
    move-exception v0

    .line 2369
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private isRootForAppsAvailable()Z
    .locals 4

    .prologue
    .line 874
    const/4 v1, 0x0

    .line 876
    .local v1, "exists":Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 877
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 881
    .end local v1    # "exists":Z
    .end local v2    # "f":Ljava/io/File;
    :goto_0
    return v1

    .line 878
    .restart local v1    # "exists":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static isRootForAppsEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 885
    const-string/jumbo v4, "persist.sys.root_access"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 887
    .local v1, "value":I
    const-string/jumbo v4, "init.svc.su_daemon"

    const-string/jumbo v5, "absent"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "running"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 888
    .local v0, "daemonState":Z
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 602
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 600
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 593
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 595
    const/4 v0, 0x1

    return v0

    .line 597
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private removeRootOptionsIfRequired()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 567
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 570
    return v1

    :cond_0
    move v0, v1

    .line 567
    goto :goto_0

    .line 574
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private resetAdbNotifyOptions()V
    .locals 3

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 920
    const-string/jumbo v1, "adb_notify"

    const/4 v2, 0x1

    .line 919
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 918
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 830
    iput-boolean v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 831
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 832
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 833
    .local v0, "cb":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 834
    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 835
    invoke-virtual {p0, v4, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 831
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v0    # "cb":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-static {}, Lcom/cyanogenmod/settings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 839
    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 840
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->resetRootAccessOptions()V

    .line 841
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->resetAdbNotifyOptions()V

    .line 842
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->resetVerifyAppsOverUsbOptions()V

    .line 843
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->resetDevelopmentShortcutOptions()V

    .line 844
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 845
    invoke-static {}, Lcom/cyanogenmod/settings/DevelopmentSettings;->resetUpdateRecoveryOptions()V

    .line 847
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 848
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 849
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    const/4 v3, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 851
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 852
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 854
    :cond_3
    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 855
    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 856
    iput-boolean v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 857
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAllOptions()V

    .line 858
    iput-boolean v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 859
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 829
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 5

    .prologue
    .line 1039
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1040
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1039
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1041
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private resetDevelopmentShortcutOptions()V
    .locals 3

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 787
    const-string/jumbo v1, "development_shortcut"

    const/4 v2, 0x0

    .line 786
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 785
    return-void
.end method

.method private resetRootAccessOptions()V
    .locals 4

    .prologue
    .line 906
    const-string/jumbo v1, "persist.sys.root_access"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "oldValue":Ljava/lang/String;
    const-string/jumbo v1, "persist.sys.root_access"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "service.adb.root"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    const-string/jumbo v1, "service.adb.root"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 911
    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x0

    .line 910
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 912
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 913
    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x1

    .line 912
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 915
    :cond_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 905
    return-void
.end method

.method private static resetUpdateRecoveryOptions()V
    .locals 2

    .prologue
    .line 1866
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1867
    const-string/jumbo v0, "persist.sys.recovery_update"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    :cond_0
    return-void
.end method

.method private resetVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1115
    const-string/jumbo v1, "verifier_verify_adb_installs"

    const/4 v2, 0x1

    .line 1114
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1113
    return-void
.end method

.method private setEnableMultiWindow(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1152
    const-string/jumbo v0, "persist.sys.debug.multi_window"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1151
    return-void
.end method

.method private setPrefsEnabledState(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 607
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 609
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 611
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAllOptions()V

    .line 606
    return-void
.end method

.method private static showEnableMultiWindowPreference()Z
    .locals 2

    .prologue
    .line 1148
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 1144
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 2140
    new-instance v0, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2141
    const v1, 0x7f0c0978

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2140
    invoke-virtual {v0, p2, v1}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1139
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1140
    const-string/jumbo v3, "verifier_setting_visible"

    .line 1139
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startInactiveAppsFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2134
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/SettingsActivity;

    .line 2135
    const-class v1, Lcom/cyanogenmod/settings/fuelgauge/InactiveApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2136
    const v3, 0x7f0c0e67

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 2134
    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2133
    return-void
.end method

.method private updateAdbOverNetwork()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 802
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 803
    const-string/jumbo v7, "adb_port"

    .line 802
    invoke-static {v6, v7, v8}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 804
    .local v3, "port":I
    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 806
    .local v1, "enabled":Z
    :goto_0
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v6, v1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 808
    const/4 v4, 0x0

    .line 810
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 812
    const-string/jumbo v6, "wifi"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 811
    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 814
    .local v5, "wifiManager":Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 820
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    .line 822
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    .line 821
    invoke-static {v6}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, "hostAddress":Ljava/lang/String;
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 801
    .end local v2    # "hostAddress":Ljava/lang/String;
    :goto_2
    return-void

    .line 804
    .end local v1    # "enabled":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 815
    .restart local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DevelopmentSettings"

    const-string/jumbo v7, "wifiManager, getConnectionInfo()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 825
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_2
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    const v7, 0x7f0c013a

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2
.end method

.method private updateAdvancedRebootOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 781
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 782
    const-string/jumbo v3, "advanced_reboot"

    .line 781
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 780
    return-void
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 699
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 700
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 701
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 702
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    .line 703
    const-string/jumbo v2, "adb_enabled"

    .line 702
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 705
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    .line 706
    const-string/jumbo v2, "adb_notify"

    .line 705
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 707
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 709
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 710
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 711
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    .line 710
    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 714
    :cond_0
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    .line 715
    const-string/jumbo v2, "bugreport_in_power_menu"

    .line 714
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 716
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateStayAwakeOptions()V

    .line 717
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    .line 718
    const-string/jumbo v2, "bluetooth_hci_log"

    .line 717
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 719
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 720
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/cyanogenmod/settings/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 722
    :cond_1
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    .line 723
    const-string/jumbo v5, "debug_view_attributes"

    .line 722
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a

    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 724
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 725
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updatePasswordSummary()V

    .line 726
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 727
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateMockLocation()V

    .line 728
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 729
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 730
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 731
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateFlingerOptions()V

    .line 732
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 733
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 734
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateMsaaOptions()V

    .line 735
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 736
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 737
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 738
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 739
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 740
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 741
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 742
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 743
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 744
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    .line 745
    const-string/jumbo v3, "persist.sys.debug.multi_window"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 744
    invoke-virtual {p0, v2, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 747
    :cond_2
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 748
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 749
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 750
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 751
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 752
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 753
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 754
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 755
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 756
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 757
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 758
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 759
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateLegacyDhcpClientOptions()V

    .line 760
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateMobileDataAlwaysOnOptions()V

    .line 761
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 762
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 763
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 764
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAdvancedRebootOptions()V

    .line 765
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateDevelopmentShortcutOptions()V

    .line 766
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 767
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateUpdateRecoveryOptions()V

    .line 769
    :cond_3
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 770
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateColorTemperature()V

    .line 698
    :cond_4
    return-void

    :cond_5
    move v2, v4

    .line 702
    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 705
    goto/16 :goto_1

    :cond_7
    move v2, v4

    .line 711
    goto/16 :goto_2

    :cond_8
    move v2, v4

    .line 714
    goto/16 :goto_3

    :cond_9
    move v2, v4

    .line 717
    goto/16 :goto_4

    :cond_a
    move v3, v4

    .line 722
    goto/16 :goto_5
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/cyanogenmod/settings/AnimationScalePreference;)V

    .line 1709
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/cyanogenmod/settings/AnimationScalePreference;)V

    .line 1710
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/cyanogenmod/settings/AnimationScalePreference;)V

    .line 1707
    return-void
.end method

.method private updateAnimationScaleValue(ILcom/cyanogenmod/settings/AnimationScalePreference;)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "pref"    # Lcom/cyanogenmod/settings/AnimationScalePreference;

    .prologue
    .line 1698
    :try_start_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 1699
    .local v1, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1700
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1702
    :cond_0
    invoke-virtual {p2, v1}, Lcom/cyanogenmod/settings/AnimationScalePreference;->setScale(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    .end local v1    # "scale":F
    :goto_0
    return-void

    .line 1703
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateAppProcessLimitOptions()V
    .locals 8

    .prologue
    .line 1774
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v2

    .line 1775
    .local v2, "limit":I
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1776
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 1777
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1778
    .local v3, "val":I
    if-lt v3, v2, :cond_1

    .line 1779
    if-eqz v1, :cond_0

    .line 1780
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1782
    :cond_0
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1783
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1784
    return-void

    .line 1776
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1787
    .end local v3    # "val":I
    :cond_2
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1788
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1789
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1158
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.shell"

    .line 1159
    const-string/jumbo v4, "com.android.shell.BugreportStorageProvider"

    .line 1158
    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    .local v1, "bugreportStorageProviderComponentName":Landroid/content/ComponentName;
    const-string/jumbo v3, "user"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1161
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1163
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "adb_enabled"

    .line 1162
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1164
    .local v0, "adbEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1165
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1166
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1167
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1156
    .end local v0    # "adbEnabled":Z
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .line 1162
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "adbEnabled":Z
    goto :goto_0

    .line 1171
    :cond_1
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1172
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1173
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1174
    const-string/jumbo v3, "bugreport_in_power_menu"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1175
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    .line 1180
    .end local v0    # "adbEnabled":Z
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1181
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method private updateColorTemperature()V
    .locals 3

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    .line 1485
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1484
    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1483
    return-void
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1665
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    .line 1666
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1667
    const-string/jumbo v3, "show_processes"

    .line 1666
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1665
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1664
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1393
    const-string/jumbo v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1394
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1395
    const-string/jumbo v1, ""

    .line 1398
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1399
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1400
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1401
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1402
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1403
    return-void

    .line 1399
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1406
    :cond_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1407
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1392
    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    .line 1419
    const-string/jumbo v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1418
    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1417
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1047
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "debug_app"

    .line 1046
    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1048
    iget-object v7, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    .line 1049
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "wait_for_debugger"

    .line 1048
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1050
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1053
    :try_start_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1054
    const/16 v8, 0x200

    .line 1053
    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1055
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1056
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1060
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v6

    const v6, 0x7f0c0b9c

    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1062
    iput-boolean v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1045
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 1048
    goto :goto_0

    .line 1056
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 1057
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .end local v3    # "label":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1058
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 1064
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c0b9b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateDevelopmentShortcutOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 797
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 798
    const-string/jumbo v3, "development_shortcut"

    .line 797
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 796
    return-void
.end method

.method private updateFlingerOptions()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1237
    :try_start_0
    const-string/jumbo v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1238
    .local v4, "flinger":Landroid/os/IBinder;
    if-eqz v4, :cond_0

    .line 1239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1240
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1241
    .local v5, "reply":Landroid/os/Parcel;
    const-string/jumbo v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1242
    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-interface {v4, v11, v0, v5, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1244
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1246
    .local v7, "showCpu":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1247
    .local v2, "enableGL":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1248
    .local v8, "showUpdates":I
    iget-object v12, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_1

    move v11, v9

    :goto_0
    invoke-virtual {p0, v12, v11}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1250
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1251
    .local v6, "showBackground":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1252
    .local v1, "disableOverlays":I
    iget-object v11, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v11, v9}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1253
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    .end local v8    # "showUpdates":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "enableGL":I
    .restart local v4    # "flinger":Landroid/os/IBinder;
    .restart local v5    # "reply":Landroid/os/Parcel;
    .restart local v7    # "showCpu":I
    .restart local v8    # "showUpdates":I
    :cond_1
    move v11, v10

    .line 1248
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v6    # "showBackground":I
    :cond_2
    move v9, v10

    .line 1252
    goto :goto_1

    .line 1256
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    .end local v8    # "showUpdates":I
    :catch_0
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1507
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    .line 1508
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1509
    const-string/jumbo v3, "debug.force_rtl"

    .line 1508
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1507
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1506
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1294
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 941
    const-string/jumbo v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 942
    .local v1, "hdcpChecking":Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 943
    const-string/jumbo v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 945
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 946
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 947
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 948
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 949
    move v3, v2

    .line 953
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 954
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 955
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 940
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 947
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "summaries":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1692
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    .line 1693
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "always_finish_activities"

    .line 1692
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1691
    return-void
.end method

.method private updateKillAppLongpressBackOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 966
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    .line 967
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kill_app_longpress_back"

    .line 966
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 965
    return-void
.end method

.method private updateLegacyDhcpClientOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1560
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    .line 1561
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1562
    const-string/jumbo v3, "legacy_dhcp_client"

    .line 1560
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1559
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 9

    .prologue
    const v8, 0x7f0a0044

    .line 1584
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 1585
    const-string/jumbo v6, "persist.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1586
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1587
    const-string/jumbo v6, "ro.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1588
    if-nez v0, :cond_0

    .line 1589
    const-string/jumbo v0, "256K"

    .line 1592
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1593
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1594
    .local v4, "titles":[Ljava/lang/String;
    const-string/jumbo v6, "ro.config.low_ram"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1595
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1596
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1598
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1599
    .local v3, "summaries":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 1600
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 1601
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1602
    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1601
    if-eqz v6, :cond_5

    .line 1603
    :cond_2
    move v2, v1

    .line 1607
    :cond_3
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1608
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1609
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1583
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "summaries":[Ljava/lang/String;
    .end local v4    # "titles":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_4
    return-void

    .line 1600
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "summaries":[Ljava/lang/String;
    .restart local v4    # "titles":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateMobileDataAlwaysOnOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1572
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    .line 1573
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1574
    const-string/jumbo v3, "mobile_data_always_on"

    .line 1572
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1571
    return-void
.end method

.method private updateMockLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1070
    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 1072
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v8, Lcom/cyanogenmod/settings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v2, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 1073
    .local v7, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_1

    .line 1074
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 1075
    .local v5, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-nez v8, :cond_0

    .line 1076
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1082
    .end local v5    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1083
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1085
    .local v4, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1086
    iget-object v9, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v10, 0x200

    .line 1085
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1087
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1088
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 1089
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1095
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    const v10, 0x7f0c0980

    invoke-virtual {p0, v10, v9}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1096
    iput-boolean v12, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1069
    .end local v4    # "label":Ljava/lang/String;
    :goto_1
    return-void

    .line 1098
    :cond_3
    iget-object v8, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    const v9, 0x7f0c097f

    invoke-virtual {p0, v9}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1091
    .restart local v4    # "label":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1303
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1749
    const-string/jumbo v3, "debug.egl.trace"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1750
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1751
    const-string/jumbo v1, ""

    .line 1754
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1755
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1756
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1757
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1758
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1759
    return-void

    .line 1755
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1762
    :cond_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1763
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1748
    return-void
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1724
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1725
    const-string/jumbo v4, "overlay_display_devices"

    .line 1724
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1726
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1727
    const-string/jumbo v1, ""

    .line 1730
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1731
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1732
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1733
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1734
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1735
    return-void

    .line 1731
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1738
    :cond_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1739
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1723
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 3

    .prologue
    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez v1, :cond_0

    .line 973
    const-string/jumbo v1, "DevelopmentSettings"

    const-string/jumbo v2, "Backup Manager is unavailable!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 977
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0c0b22

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 970
    :goto_0
    return-void

    .line 979
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0c0b21

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 981
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1218
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    .line 1219
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1220
    const-string/jumbo v3, "pointer_location"

    .line 1219
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1218
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1217
    return-void
.end method

.method private updateRootAccessOptions()V
    .locals 4

    .prologue
    .line 863
    const-string/jumbo v1, "persist.sys.root_access"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 866
    const v3, 0x7f0a0070

    .line 865
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 865
    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    invoke-static {}, Lcom/cyanogenmod/settings/DevelopmentSettings;->isRootForAppsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 862
    :cond_0
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1809
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    .line 1810
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "anr_show_background"

    .line 1809
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1808
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    .line 1383
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    .line 1382
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1381
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    .line 1372
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1371
    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1370
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1339
    const-string/jumbo v3, "debug.hwui.show_non_rect_clip"

    .line 1338
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1340
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1341
    const-string/jumbo v1, "hide"

    .line 1344
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1345
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1346
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1347
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1348
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1349
    return-void

    .line 1345
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1352
    :cond_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1353
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1337
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1229
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    .line 1230
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1231
    const-string/jumbo v3, "show_touches"

    .line 1230
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1229
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1228
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 1429
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1431
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    .line 1430
    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 1432
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1434
    const-string/jumbo v4, "accessibility_display_daltonizer"

    .line 1433
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1436
    .local v3, "mode":Ljava/lang/String;
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1437
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1438
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1440
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1441
    const v6, 0x7f0c09c8

    invoke-virtual {p0, v6}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1440
    const v6, 0x7f0c09cc

    invoke-virtual {p0, v6, v5}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1428
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .line 1430
    .end local v1    # "enabled":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 1443
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const-string/jumbo v5, "%s"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1446
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    .line 1447
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1446
    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStayAwakeOptions()V
    .locals 6

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 925
    const-string/jumbo v4, "stay_on_while_plugged_in"

    const/4 v5, 0x0

    .line 924
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 926
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 932
    .local v1, "summaries":[Ljava/lang/String;
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 933
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 935
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 936
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 937
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 923
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1209
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/cyanogenmod/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1208
    return-void

    .line 1209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1313
    const-string/jumbo v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1314
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1315
    const-string/jumbo v1, ""

    .line 1318
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1319
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1320
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1321
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1322
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1323
    return-void

    .line 1319
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1327
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1312
    return-void
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1496
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1497
    const-string/jumbo v3, "usb_audio_automatic_routing_disabled"

    .line 1496
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1495
    return-void
.end method

.method private updateUpdateRecoveryOptions()V
    .locals 3

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    .line 1855
    const-string/jumbo v1, "persist.sys.recovery_update"

    const/4 v2, 0x0

    .line 1854
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1853
    return-void
.end method

.method private updateUsbConfigurationValues(Z)V
    .locals 7
    .param p1, "isUnlocked"    # Z

    .prologue
    .line 1633
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 1634
    const-string/jumbo v5, "usb"

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1636
    .local v2, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1637
    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1638
    .local v3, "titles":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1640
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    if-eqz p1, :cond_0

    .line 1641
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1642
    move v1, v0

    .line 1646
    :cond_0
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1647
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1648
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1632
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .end local v3    # "titles":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1640
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .restart local v3    # "titles":[Ljava/lang/String;
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1103
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1104
    const-string/jumbo v4, "verifier_verify_adb_installs"

    .line 1103
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1105
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1102
    return-void

    :cond_0
    move v0, v1

    .line 1103
    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1542
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1543
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1541
    return-void

    .line 1542
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1551
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1552
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1550
    return-void

    .line 1551
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1521
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    .line 1522
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1523
    const-string/jumbo v3, "wifi_display_certification_on"

    .line 1521
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1520
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1533
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1534
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1532
    return-void

    .line 1533
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1456
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1458
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    .line 1457
    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 1459
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1461
    const-string/jumbo v4, "accessibility_display_daltonizer"

    .line 1462
    const/4 v5, -0x1

    .line 1460
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1463
    .local v3, "mode":Ljava/lang/String;
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1464
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1466
    const/4 v4, 0x1

    return v4

    .line 1457
    .end local v1    # "enabled":Z
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 1469
    :cond_1
    return v6
.end method

.method private writeAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 776
    const-string/jumbo v2, "advanced_reboot"

    .line 777
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 775
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 774
    return-void

    .line 777
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILcom/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "pref"    # Lcom/cyanogenmod/settings/AnimationScalePreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1716
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1717
    .local v1, "scale":F
    :goto_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1718
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/cyanogenmod/settings/AnimationScalePreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    .end local v1    # "scale":F
    :goto_1
    return-void

    .line 1716
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "scale":F
    goto :goto_0

    .line 1719
    .end local v1    # "scale":F
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1795
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1796
    .local v1, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1797
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    .end local v1    # "limit":I
    :goto_1
    return-void

    .line 1795
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "limit":I
    goto :goto_0

    .line 1798
    .end local v1    # "limit":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 987
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 988
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 989
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 990
    const-string/jumbo v3, "bluetooth_hci_log"

    .line 991
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 989
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 986
    return-void

    .line 991
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeColorTemperature()V
    .locals 3

    .prologue
    .line 1489
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    .line 1490
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    .line 1489
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1492
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0eab

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1488
    return-void

    .line 1490
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 1671
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1672
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1673
    const-string/jumbo v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1672
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1674
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1675
    const-string/jumbo v3, "com.android.systemui"

    const-string/jumbo v4, "com.android.systemui.LoadAverageService"

    .line 1674
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1676
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1677
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1670
    :goto_1
    return-void

    .line 1673
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1679
    .restart local v0    # "service":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1411
    const-string/jumbo v1, "debug.hwui.overdraw"

    .line 1412
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1411
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1414
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1410
    return-void

    .line 1412
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1423
    const-string/jumbo v1, "debug.layout"

    .line 1424
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1423
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1422
    return-void

    .line 1424
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 5

    .prologue
    .line 996
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 997
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    .line 996
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeDevelopmentShortcutOptions()V
    .locals 3

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 792
    const-string/jumbo v2, "development_shortcut"

    .line 793
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 791
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 790
    return-void

    .line 793
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 7

    .prologue
    .line 1279
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1280
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1282
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1283
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 1284
    .local v1, "disableOverlays":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    const/16 v4, 0x3f0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1288
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_1
    return-void

    .line 1283
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v3    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "disableOverlays":I
    goto :goto_0

    .line 1290
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1513
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1514
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1515
    const-string/jumbo v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1514
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1516
    const-string/jumbo v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/cyanogenmod/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1512
    return-void

    .line 1515
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1516
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1299
    const-string/jumbo v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1298
    return-void

    .line 1299
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 3

    .prologue
    .line 1685
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1686
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 1685
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :goto_0
    return-void

    .line 1687
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeKillAppLongpressBackOptions()V
    .locals 3

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 961
    const-string/jumbo v2, "kill_app_longpress_back"

    .line 962
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 960
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 959
    return-void

    .line 962
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeLegacyDhcpClientOptions()V
    .locals 3

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1567
    const-string/jumbo v2, "legacy_dhcp_client"

    .line 1568
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1566
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1565
    return-void

    .line 1568
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1614
    const-string/jumbo v4, "ro.logd.size"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1616
    sput-object v0, Lcom/cyanogenmod/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1618
    :cond_0
    if-eqz p1, :cond_1

    .line 1619
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1620
    .local v3, "size":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "persist.logd.size"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1623
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "logcat -b all -G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1624
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1625
    const-string/jumbo v4, "DevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Logcat ring buffer sizes set to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    .end local v2    # "p":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1613
    return-void

    .line 1619
    .end local v3    # "size":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/cyanogenmod/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .restart local v3    # "size":Ljava/lang/String;
    goto :goto_0

    .line 1626
    :catch_0
    move-exception v1

    .line 1627
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DevelopmentSettings"

    const-string/jumbo v5, "Cannot set logcat ring buffer sizes"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private writeMobileDataAlwaysOnOptions()V
    .locals 3

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1579
    const-string/jumbo v2, "mobile_data_always_on"

    .line 1580
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1578
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1577
    return-void

    .line 1580
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMockLocation()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1003
    const-string/jumbo v7, "appops"

    invoke-virtual {p0, v7}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1006
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v7, Lcom/cyanogenmod/settings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 1007
    .local v6, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1

    .line 1009
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 1010
    .local v4, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 1011
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1013
    .local v3, "oldMockLocationApp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1014
    const/16 v8, 0x200

    .line 1013
    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1015
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3a

    .line 1016
    const/4 v9, 0x2

    .line 1015
    invoke-virtual {v1, v8, v7, v3, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1017
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1025
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "oldMockLocationApp":Ljava/lang/String;
    .end local v4    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1027
    :try_start_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1028
    iget-object v8, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v9, 0x200

    .line 1027
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1029
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1030
    iget-object v8, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1029
    const/16 v9, 0x3a

    .line 1030
    const/4 v10, 0x0

    .line 1029
    invoke-virtual {v1, v9, v7, v8, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1002
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    return-void

    .line 1031
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1308
    const-string/jumbo v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1307
    return-void

    .line 1308
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1767
    const-string/jumbo v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1769
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1766
    return-void

    .line 1767
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1744
    const-string/jumbo v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .line 1743
    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1745
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1742
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1214
    const-string/jumbo v2, "pointer_location"

    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1213
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1212
    return-void

    .line 1214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeRootAccessOptions(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 892
    const-string/jumbo v1, "persist.sys.root_access"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "oldValue":Ljava/lang/String;
    const-string/jumbo v1, "persist.sys.root_access"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 902
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 891
    return-void

    .line 895
    :cond_1
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "service.adb.root"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 894
    if-eqz v1, :cond_0

    .line 896
    const-string/jumbo v1, "service.adb.root"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 898
    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x0

    .line 897
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 899
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 900
    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x1

    .line 899
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1803
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1804
    const-string/jumbo v2, "anr_show_background"

    .line 1805
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1803
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1802
    return-void

    .line 1805
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1387
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    .line 1388
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1387
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1386
    return-void

    .line 1388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1376
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    .line 1377
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1376
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1375
    return-void

    .line 1377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1364
    const-string/jumbo v1, "debug.hwui.show_non_rect_clip"

    .line 1365
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1364
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1367
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1363
    return-void

    .line 1365
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1225
    const-string/jumbo v2, "show_touches"

    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1224
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1223
    return-void

    .line 1225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 7

    .prologue
    .line 1262
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1263
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1265
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1266
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 1267
    .local v3, "showUpdates":I
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    const/16 v4, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1271
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :cond_0
    :goto_1
    return-void

    .line 1266
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "showUpdates":I
    goto :goto_0

    .line 1273
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1473
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1474
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1475
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1476
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1472
    :goto_0
    return-void

    .line 1478
    :cond_0
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1479
    const-string/jumbo v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStayAwakeOptions(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1357
    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1358
    .local v0, "val":I
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1359
    const-string/jumbo v2, "stay_on_while_plugged_in"

    .line 1358
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1360
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateStayAwakeOptions()V

    .line 1356
    return-void
.end method

.method private writeStrictModeVisualOptions()V
    .locals 3

    .prologue
    .line 1202
    :try_start_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1203
    const-string/jumbo v1, "1"

    .line 1202
    :goto_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 1200
    :goto_1
    return-void

    .line 1203
    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1204
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1331
    const-string/jumbo v1, "debug.hwui.profile"

    .line 1332
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1331
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1334
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1330
    return-void

    .line 1332
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1501
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1502
    const-string/jumbo v2, "usb_audio_automatic_routing_disabled"

    .line 1503
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1501
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1500
    return-void

    .line 1503
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUpdateRecoveryOptions()V
    .locals 2

    .prologue
    .line 1859
    const-string/jumbo v1, "persist.sys.recovery_update"

    .line 1860
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1859
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1858
    return-void

    .line 1860
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeUsbConfigurationOption(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1653
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1654
    .local v1, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1655
    .local v0, "function":Ljava/lang/String;
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1656
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1657
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 1652
    :goto_0
    return-void

    .line 1659
    :cond_0
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1660
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1110
    const-string/jumbo v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1109
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1108
    return-void

    .line 1110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1547
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1546
    return-void

    .line 1547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1556
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1555
    return-void

    .line 1556
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1527
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1528
    const-string/jumbo v2, "wifi_display_certification_on"

    .line 1529
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1527
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1526
    return-void

    .line 1529
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1538
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1537
    return-void

    .line 1538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 326
    const/16 v0, 0x27

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 579
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 581
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/SettingsActivity;

    .line 583
    .local v0, "activity":Lcom/cyanogenmod/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/SettingsActivity;->getSwitchBar()Lcom/cyanogenmod/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    .line 584
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 586
    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/cyanogenmod/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 578
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1914
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1915
    if-ne p2, v1, :cond_0

    .line 1916
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1917
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1918
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1913
    :cond_0
    :goto_0
    return-void

    .line 1920
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 1921
    if-ne p2, v1, :cond_0

    .line 1922
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1923
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeMockLocation()V

    .line 1924
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateMockLocation()V

    goto :goto_0

    .line 1926
    :cond_2
    if-nez p1, :cond_4

    .line 1927
    if-ne p2, v1, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1929
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 1931
    :cond_3
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/cyanogenmod/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1935
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 2240
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_1

    .line 2241
    if-ne p2, v4, :cond_0

    .line 2242
    iput-boolean v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 2243
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2244
    const-string/jumbo v4, "adb_enabled"

    .line 2243
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2245
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 2246
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 2247
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 2239
    :cond_0
    :goto_0
    return-void

    .line 2249
    :cond_1
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 2250
    if-ne p2, v4, :cond_0

    .line 2251
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2252
    const-string/jumbo v4, "adb_port"

    const/16 v5, 0x15b3

    .line 2251
    invoke-static {v3, v4, v5}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2254
    :cond_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 2255
    if-ne p2, v4, :cond_0

    .line 2257
    :try_start_0
    const-string/jumbo v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2258
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 2259
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2260
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 2261
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DevelopmentSettings"

    const-string/jumbo v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2264
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_4

    .line 2265
    if-ne p2, v4, :cond_0

    .line 2266
    iput-boolean v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 2267
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2268
    const-string/jumbo v4, "development_settings_enabled"

    .line 2267
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2269
    iput-boolean v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 2270
    iget-boolean v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 2275
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "development"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2276
    const-string/jumbo v4, "show"

    .line 2275
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2279
    :cond_4
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_6

    .line 2280
    if-ne p2, v4, :cond_5

    .line 2281
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 2284
    :cond_5
    const-string/jumbo v3, "0"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2286
    :cond_6
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 2287
    if-ne p2, v4, :cond_0

    .line 2288
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeUpdateRecoveryOptions()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 331
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 333
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 335
    const-string/jumbo v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 334
    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 336
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 337
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 339
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 341
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-nez v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v4, "no_debugging_features"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    .line 341
    if-nez v3, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 344
    const-string/jumbo v4, "device_provisioned"

    .line 343
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 347
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUnavailable:Z

    .line 348
    new-instance v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 349
    return-void

    .line 352
    :cond_1
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 355
    const-string/jumbo v3, "debug_debugging_category"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 354
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 356
    .local v0, "debugDebuggingCategory":Landroid/preference/PreferenceGroup;
    const-string/jumbo v3, "enable_adb"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    .line 358
    const-string/jumbo v3, "adb_notify"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    .line 359
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const-string/jumbo v3, "adb_over_network"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    .line 362
    const-string/jumbo v3, "clear_adb_keys"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 363
    const-string/jumbo v3, "ro.adb.secure"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 364
    if-eqz v0, :cond_2

    .line 365
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    :cond_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    const-string/jumbo v3, "enable_terminal"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 370
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.terminal"

    invoke-static {v3, v4}, Lcom/cyanogenmod/settings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 371
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    iput-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 375
    :cond_3
    const-string/jumbo v3, "bugreport"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 376
    const-string/jumbo v3, "bugreport_in_power"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    .line 377
    const-string/jumbo v3, "keep_screen_on_modes"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    .line 378
    const-string/jumbo v3, "bt_hci_snoop_log"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    .line 379
    const-string/jumbo v3, "oem_unlock_enable"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 380
    invoke-static {}, Lcom/cyanogenmod/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v3

    if-nez v3, :cond_4

    .line 381
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 382
    iput-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 385
    :cond_4
    const-string/jumbo v3, "debug_view_attributes"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    .line 386
    const-string/jumbo v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 387
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const-string/jumbo v3, "advanced_reboot"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    .line 389
    const-string/jumbo v3, "update_recovery"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    .line 390
    const-string/jumbo v3, "development_shortcut"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    .line 393
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 394
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 395
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 396
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 397
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 398
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 399
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 400
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 403
    :cond_5
    const-string/jumbo v3, "debug_app"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 404
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    const-string/jumbo v3, "wait_for_debugger"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    .line 407
    const-string/jumbo v3, "mock_location_app"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    .line 408
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    const-string/jumbo v3, "verify_apps_over_usb"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    .line 411
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v3

    if-nez v3, :cond_6

    .line 413
    if-eqz v0, :cond_d

    .line 414
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 419
    :cond_6
    :goto_0
    const-string/jumbo v3, "strict_mode"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    .line 420
    const-string/jumbo v3, "pointer_location"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    .line 421
    const-string/jumbo v3, "show_touches"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    .line 422
    const-string/jumbo v3, "show_screen_updates"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    .line 423
    const-string/jumbo v3, "disable_overlays"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    .line 424
    const-string/jumbo v3, "show_cpu_usage"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    .line 425
    const-string/jumbo v3, "force_hw_ui"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    .line 426
    const-string/jumbo v3, "force_msaa"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    .line 427
    const-string/jumbo v3, "track_frame_time"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 428
    const-string/jumbo v3, "show_non_rect_clip"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 429
    const-string/jumbo v3, "show_hw_screen_udpates"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    .line 430
    const-string/jumbo v3, "show_hw_layers_udpates"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    .line 431
    const-string/jumbo v3, "debug_layout"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    .line 432
    const-string/jumbo v3, "force_rtl_layout_all_locales"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    .line 433
    const-string/jumbo v3, "debug_hw_overdraw"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 434
    const-string/jumbo v3, "wifi_display_certification"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    .line 435
    const-string/jumbo v3, "wifi_verbose_logging"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    .line 436
    const-string/jumbo v3, "wifi_aggressive_handover"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    .line 437
    const-string/jumbo v3, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    .line 438
    const-string/jumbo v3, "legacy_dhcp_client"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    .line 439
    const-string/jumbo v3, "mobile_data_always_on"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    .line 440
    const-string/jumbo v3, "select_logd_size"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    .line 441
    const-string/jumbo v3, "select_usb_configuration"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    .line 443
    const-string/jumbo v3, "window_animation_scale"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/cyanogenmod/settings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    .line 444
    const-string/jumbo v3, "transition_animation_scale"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/cyanogenmod/settings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    .line 445
    const-string/jumbo v3, "animator_duration_scale"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/cyanogenmod/settings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    .line 446
    const-string/jumbo v3, "overlay_display_devices"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 447
    const-string/jumbo v3, "enable_multi_window"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    .line 448
    invoke-static {}, Lcom/cyanogenmod/settings/DevelopmentSettings;->showEnableMultiWindowPreference()Z

    move-result v3

    if-nez v3, :cond_7

    .line 450
    const-string/jumbo v3, "debug_drawing_category"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 451
    .local v1, "drawingGroup":Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_e

    .line 452
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    :goto_1
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 457
    iput-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    .line 459
    .end local v1    # "drawingGroup":Landroid/preference/PreferenceGroup;
    :cond_7
    const-string/jumbo v3, "enable_opengl_traces"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 460
    const-string/jumbo v3, "simulate_color_space"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    .line 461
    const-string/jumbo v3, "usb_audio"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    .line 464
    const-string/jumbo v3, "immediately_destroy_activities"

    .line 463
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    .line 465
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const-string/jumbo v3, "app_process_limit"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 471
    const-string/jumbo v3, "show_all_anrs"

    .line 470
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    .line 472
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    const-string/jumbo v3, "kill_app_longpress_back"

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    .line 477
    const-string/jumbo v3, "hdcp_checking"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 478
    .local v2, "hdcpChecking":Landroid/preference/Preference;
    if-eqz v2, :cond_8

    .line 479
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    .line 483
    :cond_8
    const-string/jumbo v3, "root_access"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    .line 484
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 486
    const-string/jumbo v3, "root_appops"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    .line 487
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 489
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->removeRootOptionsIfRequired()Z

    move-result v3

    if-nez v3, :cond_9

    .line 490
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->isRootForAppsAvailable()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 491
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    const v4, 0x7f0a0070

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 492
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    const v4, 0x7f0a0071

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 497
    :goto_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_9
    const-string/jumbo v3, "development_tools"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    .line 502
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 503
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 502
    invoke-static {v3, v4, v5, v7}, Lcom/cyanogenmod/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 504
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_a
    const-string/jumbo v3, "color_mode"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/settings/ColorModePreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorModePreference:Lcom/cyanogenmod/settings/ColorModePreference;

    .line 508
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorModePreference:Lcom/cyanogenmod/settings/ColorModePreference;

    invoke-virtual {v3}, Lcom/cyanogenmod/settings/ColorModePreference;->updateCurrentAndSupported()V

    .line 509
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorModePreference:Lcom/cyanogenmod/settings/ColorModePreference;

    invoke-virtual {v3}, Lcom/cyanogenmod/settings/ColorModePreference;->getTransformsCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_b

    .line 510
    const-string/jumbo v3, "color_mode"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 511
    iput-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorModePreference:Lcom/cyanogenmod/settings/ColorModePreference;

    .line 514
    :cond_b
    const-string/jumbo v3, "color_temperature"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    .line 515
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 516
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :goto_3
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 524
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 525
    iput-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    .line 526
    const-string/jumbo v3, "persist.sys.recovery_update"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 527
    const-string/jumbo v3, "persist.sys.recovery_update"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 330
    :cond_c
    return-void

    .line 416
    .end local v2    # "hdcpChecking":Landroid/preference/Preference;
    :cond_d
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 454
    .restart local v1    # "drawingGroup":Landroid/preference/PreferenceGroup;
    :cond_e
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 494
    .end local v1    # "drawingGroup":Landroid/preference/PreferenceGroup;
    .restart local v2    # "hdcpChecking":Landroid/preference/Preference;
    :cond_f
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    const v4, 0x7f0a0072

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 495
    iget-object v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    const v4, 0x7f0a0073

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 519
    :cond_10
    const-string/jumbo v3, "color_temperature"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 520
    iput-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 675
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 676
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 678
    invoke-super {p0, p1, p2, p3}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2319
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 2320
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 2318
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 683
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 685
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 686
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/cyanogenmod/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 689
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/widget/SwitchBar;->hide()V

    .line 690
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 682
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2295
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 2296
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2299
    :cond_0
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2293
    :cond_1
    :goto_0
    return-void

    .line 2300
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 2301
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 2302
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 2303
    :cond_3
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_5

    .line 2304
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_4

    .line 2305
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/widget/SwitchBar;->setChecked(Z)V

    .line 2307
    :cond_4
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 2308
    :cond_5
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_6

    .line 2309
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 2310
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 2311
    :cond_6
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 2312
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateUpdateRecoveryOptions()V

    .line 2313
    iput-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 666
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 667
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorModePreference:Lcom/cyanogenmod/settings/ColorModePreference;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorModePreference:Lcom/cyanogenmod/settings/ColorModePreference;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/ColorModePreference;->stopListening()V

    .line 665
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2146
    const-string/jumbo v0, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2147
    const-string/jumbo v0, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 2149
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 2150
    return v3

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 2152
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 2153
    return v3

    .line 2154
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 2155
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeUsbConfigurationOption(Ljava/lang/Object;)V

    .line 2156
    return v3

    .line 2157
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    if-ne p1, v0, :cond_3

    .line 2158
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v4, v0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 2159
    return v3

    .line 2160
    :cond_3
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    if-ne p1, v0, :cond_4

    .line 2161
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v3, v0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 2162
    return v3

    .line 2163
    :cond_4
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    if-ne p1, v0, :cond_5

    .line 2164
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 2165
    return v3

    .line 2166
    :cond_5
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    .line 2167
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 2168
    return v3

    .line 2169
    :cond_6
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_7

    .line 2170
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    .line 2171
    return v3

    .line 2172
    :cond_7
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_8

    .line 2173
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    .line 2174
    return v3

    .line 2175
    :cond_8
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_9

    .line 2176
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    .line 2177
    return v3

    .line 2178
    :cond_9
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_a

    .line 2179
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    .line 2180
    return v3

    .line 2181
    :cond_a
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_b

    .line 2182
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 2183
    return v3

    .line 2184
    :cond_b
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_c

    .line 2185
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 2186
    return v3

    .line 2187
    :cond_c
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_10

    .line 2188
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "persist.sys.root_access"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2189
    const-string/jumbo v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2202
    :cond_d
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    .line 2204
    :goto_0
    return v3

    .line 2190
    :cond_e
    iput-object p2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    .line 2191
    iput-boolean v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 2192
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    .line 2193
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 2195
    :cond_f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2196
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2195
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2197
    const v1, 0x7f0c0070

    .line 2195
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2198
    const v1, 0x1040013

    .line 2195
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2199
    const v1, 0x1040009

    .line 2195
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 2200
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 2205
    :cond_10
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_11

    .line 2206
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeStayAwakeOptions(Ljava/lang/Object;)V

    .line 2207
    return v3

    .line 2209
    :cond_11
    return v4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1941
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    if-eq p1, v2, :cond_0

    .line 1942
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    if-ne p1, v2, :cond_2

    .line 1944
    :cond_0
    check-cast p1, Lcom/cyanogenmod/settings/AnimationScalePreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/cyanogenmod/settings/AnimationScalePreference;->click()V

    .line 1953
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 1943
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/cyanogenmod/settings/AnimationScalePreference;

    if-eq p1, v2, :cond_0

    .line 1945
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 1946
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1947
    .local v1, "mActivity":Landroid/app/Activity;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1948
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "appops_tab"

    const v3, 0x7f0c0144

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1949
    const-class v2, Lcom/cyanogenmod/settings/Settings$AppOpsSummaryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1950
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1951
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v7, 0x1040013

    const v6, 0x1040009

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1958
    invoke-static {}, Lcom/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1959
    return v3

    .line 1962
    :cond_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_4

    .line 1963
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1964
    iput-boolean v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1965
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 1966
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1968
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1969
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0994

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1968
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1970
    const v4, 0x7f0c0993

    .line 1968
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1974
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2130
    :cond_2
    :goto_0
    return v3

    .line 1976
    :cond_3
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1977
    const-string/jumbo v4, "adb_enabled"

    .line 1976
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1978
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1979
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1980
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    .line 1982
    :cond_4
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_6

    .line 1983
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1984
    const-string/jumbo v5, "adb_notify"

    .line 1985
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1983
    :goto_1
    invoke-static {v4, v5, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v2, v3

    .line 1985
    goto :goto_1

    .line 1986
    :cond_6
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_9

    .line 1987
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1988
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_7

    .line 1989
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1991
    :cond_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1992
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c013b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1991
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1993
    const v4, 0x7f0c0139

    .line 1991
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 1997
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1999
    :cond_8
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2000
    const-string/jumbo v4, "adb_port"

    const/4 v5, -0x1

    .line 1999
    invoke-static {v2, v4, v5}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2001
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateAdbOverNetwork()V

    goto/16 :goto_0

    .line 2003
    :cond_9
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v4, :cond_b

    .line 2004
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 2005
    :cond_a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2006
    const v4, 0x7f0c0995

    .line 2005
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2007
    const v4, 0x104000a

    .line 2005
    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2008
    const/high16 v4, 0x1040000

    .line 2005
    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 2010
    :cond_b
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_d

    .line 2011
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2012
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "com.android.terminal"

    .line 2013
    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2012
    :goto_2
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_c
    move v2, v3

    .line 2014
    goto :goto_2

    .line 2015
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_f

    .line 2016
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2017
    const-string/jumbo v5, "bugreport_in_power_menu"

    .line 2018
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2016
    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    move v2, v3

    .line 2018
    goto :goto_3

    .line 2019
    :cond_f
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_10

    .line 2020
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 2021
    :cond_10
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_12

    .line 2022
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2023
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2024
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    .line 2026
    :cond_11
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/cyanogenmod/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 2029
    :cond_12
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_13

    .line 2030
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/cyanogenmod/settings/AppPicker;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2031
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings.extra.REQUESTIING_PERMISSION"

    .line 2032
    const-string/jumbo v4, "android.permission.ACCESS_MOCK_LOCATION"

    .line 2031
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2033
    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2034
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_13
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_15

    .line 2035
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2036
    const-string/jumbo v5, "debug_view_attributes"

    .line 2037
    iget-object v6, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2035
    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_14
    move v2, v3

    .line 2037
    goto :goto_4

    .line 2038
    :cond_15
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_16

    .line 2039
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/cyanogenmod/settings/AppPicker;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2040
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings.extra.DEBUGGABLE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2041
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2042
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_16
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_17

    .line 2043
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 2044
    :cond_17
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_18

    .line 2045
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 2046
    :cond_18
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_19

    .line 2047
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 2048
    :cond_19
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1a

    .line 2049
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 2050
    :cond_1a
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1b

    .line 2051
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 2052
    :cond_1b
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1c

    .line 2053
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 2054
    :cond_1c
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1d

    .line 2055
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 2056
    :cond_1d
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1f

    .line 2057
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2058
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->confirmEnableMultiWindowMode()V

    goto/16 :goto_0

    .line 2060
    :cond_1e
    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/DevelopmentSettings;->setEnableMultiWindow(Z)V

    goto/16 :goto_0

    .line 2062
    :cond_1f
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_20

    .line 2063
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 2064
    :cond_20
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_21

    .line 2065
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 2066
    :cond_21
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_22

    .line 2067
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 2068
    :cond_22
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_23

    .line 2069
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 2070
    :cond_23
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_24

    .line 2071
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 2072
    :cond_24
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_25

    .line 2073
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 2074
    :cond_25
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_26

    .line 2075
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 2076
    :cond_26
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_27

    .line 2077
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 2078
    :cond_27
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_28

    .line 2079
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 2080
    :cond_28
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_29

    .line 2081
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 2082
    :cond_29
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2a

    .line 2083
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    .line 2084
    :cond_2a
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2b

    .line 2085
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    .line 2086
    :cond_2b
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2c

    .line 2087
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    .line 2088
    :cond_2c
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2d

    .line 2089
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeLegacyDhcpClientOptions()V

    goto/16 :goto_0

    .line 2090
    :cond_2d
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2e

    .line 2091
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeMobileDataAlwaysOnOptions()V

    goto/16 :goto_0

    .line 2092
    :cond_2e
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2f

    .line 2093
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeColorTemperature()V

    goto/16 :goto_0

    .line 2094
    :cond_2f
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_30

    .line 2095
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    .line 2096
    :cond_30
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_31

    .line 2097
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeAdvancedRebootOptions()V

    goto/16 :goto_0

    .line 2098
    :cond_31
    const-string/jumbo v2, "inactive_apps"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2099
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->startInactiveAppsFragment()V

    goto/16 :goto_0

    .line 2100
    :cond_32
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_33

    .line 2101
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeDevelopmentShortcutOptions()V

    goto/16 :goto_0

    .line 2102
    :cond_33
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_34

    .line 2103
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->writeKillAppLongpressBackOptions()V

    goto/16 :goto_0

    .line 2104
    :cond_34
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_37

    .line 2105
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2106
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_35

    .line 2107
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 2109
    :cond_35
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2110
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2111
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2110
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2112
    const v4, 0x7f0c0082

    .line 2110
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    .line 2124
    :goto_5
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 2117
    :cond_36
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2118
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2117
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2119
    const v4, 0x7f0c0082

    .line 2117
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    goto :goto_5

    .line 2127
    :cond_37
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 616
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 618
    iget-boolean v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 621
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 622
    if-eqz v1, :cond_0

    .line 623
    const v2, 0x7f0c096b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 625
    :cond_0
    return-void

    .line 628
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 633
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 638
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 640
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "development_settings_enabled"

    .line 639
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 641
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Lcom/cyanogenmod/settings/widget/SwitchBar;->setChecked(Z)V

    .line 642
    iget-boolean v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 644
    iget-boolean v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v2, :cond_6

    .line 655
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/widget/SwitchBar;->show()V

    .line 656
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->updateKillAppLongpressBackOptions()V

    .line 658
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorModePreference:Lcom/cyanogenmod/settings/ColorModePreference;

    if-eqz v2, :cond_4

    .line 659
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorModePreference:Lcom/cyanogenmod/settings/ColorModePreference;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/ColorModePreference;->startListening()V

    .line 660
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mColorModePreference:Lcom/cyanogenmod/settings/ColorModePreference;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/ColorModePreference;->updateCurrentAndSupported()V

    .line 615
    :cond_4
    return-void

    .line 635
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_5
    iget-object v4, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_6
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 650
    const-string/jumbo v4, "development_settings_enabled"

    .line 649
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 651
    iput-boolean v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 652
    iget-object v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/widget/SwitchBar;->setChecked(Z)V

    .line 653
    iget-boolean v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1880
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/widget/SwitchBar;->getSwitch()Lcom/cyanogenmod/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1881
    return-void

    .line 1883
    :cond_0
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_2

    .line 1884
    if-eqz p2, :cond_3

    .line 1885
    iput-boolean v2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1886
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1887
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1889
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1890
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1891
    const v2, 0x7f0c0997

    .line 1890
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1889
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1892
    const v1, 0x7f0c0996

    .line 1889
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1893
    const v1, 0x1040013

    .line 1889
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1894
    const v1, 0x1040009

    .line 1889
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1896
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1879
    :cond_2
    :goto_0
    return-void

    .line 1898
    :cond_3
    invoke-direct {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1899
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1900
    const-string/jumbo v1, "development_settings_enabled"

    .line 1899
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1901
    iput-boolean p2, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1902
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1905
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "development"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1906
    const-string/jumbo v1, "show"

    .line 1905
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 2324
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 2326
    new-instance v0, Lcom/cyanogenmod/settings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2323
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 694
    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 695
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 693
    return-void
.end method
