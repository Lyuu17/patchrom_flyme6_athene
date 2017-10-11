.class public Lcom/cyanogenmod/settings/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/cyanogenmod/settings/ButtonBarHandler;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/SettingsActivity$1;,
        Lcom/cyanogenmod/settings/SettingsActivity$2;
    }
.end annotation


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/cyanogenmod/settings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeActivitiesCount:I

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNfcProfileCallback:Lcom/cyanogenmod/settings/profiles/NFCProfileTagCallback;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/cyanogenmod/settings/SettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic -get1(Lcom/cyanogenmod/settings/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/cyanogenmod/settings/SettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "categories"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/SettingsActivity;Z)V
    .locals 0
    .param p1, "forceRefresh"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    sput-boolean v3, Lcom/cyanogenmod/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 305
    const/16 v0, 0x50

    new-array v0, v0, [Ljava/lang/String;

    .line 306
    const-class v1, Lcom/cyanogenmod/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 307
    const-class v1, Lcom/cyanogenmod/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 308
    const-class v1, Lcom/cyanogenmod/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 309
    const-class v1, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 310
    const-class v1, Lcom/cyanogenmod/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 311
    const-class v1, Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 312
    const-class v1, Lcom/cyanogenmod/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 313
    const-class v1, Lcom/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 314
    const-class v1, Lcom/cyanogenmod/settings/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 315
    const-class v1, Lcom/cyanogenmod/settings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 316
    const-class v1, Lcom/cyanogenmod/settings/LocalePicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 317
    const-class v1, Lcom/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 318
    const-class v1, Lcom/cyanogenmod/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 319
    const-class v1, Lcom/cyanogenmod/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 320
    const-class v1, Lcom/cyanogenmod/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 321
    const-class v1, Lcom/cyanogenmod/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 322
    const-class v1, Lcom/cyanogenmod/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 323
    const-class v1, Lcom/cyanogenmod/settings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 324
    const-class v1, Lcom/cyanogenmod/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 325
    const-class v1, Lcom/cyanogenmod/settings/applications/ManageAssist;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 326
    const-class v1, Lcom/cyanogenmod/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 327
    const-class v1, Lcom/cyanogenmod/settings/notification/NotificationStation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 328
    const-class v1, Lcom/cyanogenmod/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 329
    const-class v1, Lcom/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 330
    const-class v1, Lcom/cyanogenmod/settings/applications/UsageAccessDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 331
    const-class v1, Lcom/cyanogenmod/settings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 332
    const-class v1, Lcom/cyanogenmod/settings/DeviceAdminSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 333
    const-class v1, Lcom/cyanogenmod/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 334
    const-class v1, Lcom/cyanogenmod/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 335
    const-class v1, Lcom/cyanogenmod/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 336
    const-class v1, Lcom/cyanogenmod/settings/tts/TextToSpeechSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 337
    const-class v1, Lcom/cyanogenmod/settings/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 338
    const-class v1, Lcom/cyanogenmod/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 339
    const-class v1, Lcom/cyanogenmod/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 340
    const-class v1, Lcom/cyanogenmod/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 341
    const-class v1, Lcom/cyanogenmod/settings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 342
    const-class v1, Lcom/cyanogenmod/settings/nfc/AndroidBeam;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 343
    const-class v1, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 344
    const-class v1, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 345
    const-class v1, Lcom/cyanogenmod/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 346
    const-class v1, Lcom/cyanogenmod/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 347
    const-class v1, Lcom/cyanogenmod/settings/CryptKeeperSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 348
    const-class v1, Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 349
    const-class v1, Lcom/cyanogenmod/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 350
    const-class v1, Lcom/cyanogenmod/settings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 351
    const-class v1, Lcom/cyanogenmod/settings/notification/NotificationAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 352
    const-class v1, Lcom/cyanogenmod/settings/notification/ZenAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 353
    const-class v1, Lcom/cyanogenmod/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 354
    const-class v1, Lcom/cyanogenmod/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 355
    const-class v1, Lcom/cyanogenmod/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 356
    const-class v1, Lcom/cyanogenmod/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 357
    const-class v1, Lcom/cyanogenmod/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 358
    const-class v1, Lcom/cyanogenmod/settings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 359
    const-class v1, Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 360
    const-class v1, Lcom/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 361
    const-class v1, Lcom/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 362
    const-class v1, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 363
    const-class v1, Lcom/cyanogenmod/settings/notification/AppNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 364
    const-class v1, Lcom/cyanogenmod/settings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 365
    const-class v1, Lcom/cyanogenmod/settings/ApnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 366
    const-class v1, Lcom/cyanogenmod/settings/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 367
    const-class v1, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 368
    const-class v1, Lcom/cyanogenmod/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 369
    const-class v1, Lcom/cyanogenmod/settings/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 370
    const-class v1, Lcom/cyanogenmod/settings/notification/ZenModeEventRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 371
    const-class v1, Lcom/cyanogenmod/settings/notification/ZenModeExternalRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 372
    const-class v1, Lcom/cyanogenmod/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 373
    const-class v1, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 374
    const-class v1, Lcom/cyanogenmod/settings/applications/ProcessStatsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 375
    const-class v1, Lcom/cyanogenmod/settings/applications/DrawOverlayDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 376
    const-class v1, Lcom/cyanogenmod/settings/applications/WriteSettingsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 377
    const-class v1, Lcom/cyanogenmod/settings/livedisplay/LiveDisplay;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 378
    const-class v1, Lcom/cyanogenmod/settings/cyanogenmod/DisplayRotation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 379
    const-class v1, Lcom/cyanogenmod/settings/cyanogenmod/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 380
    const-class v1, Lcom/cyanogenmod/settings/blacklist/BlacklistSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 381
    const-class v1, Lcom/cyanogenmod/settings/profiles/ProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 382
    const-class v1, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 383
    const-class v1, Lcom/cyanogenmod/settings/notification/NotificationManagerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 384
    const-class v1, Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 385
    const-class v1, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 305
    sput-object v0, Lcom/cyanogenmod/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 389
    new-array v0, v4, [Ljava/lang/String;

    .line 390
    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    .line 389
    sput-object v0, Lcom/cyanogenmod/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 273
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 396
    iput-boolean v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mBatteryPresent:Z

    .line 397
    new-instance v0, Lcom/cyanogenmod/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/SettingsActivity$1;-><init>(Lcom/cyanogenmod/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 413
    new-instance v0, Lcom/cyanogenmod/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/search/DynamicIndexableContentMonitor;-><init>()V

    .line 412
    iput-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/cyanogenmod/settings/search/DynamicIndexableContentMonitor;

    .line 430
    iput-boolean v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 439
    new-instance v0, Lcom/cyanogenmod/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/SettingsActivity$2;-><init>(Lcom/cyanogenmod/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 453
    iput-boolean v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 454
    iput v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 153
    return-void

    .line 273
    nop

    :array_0
    .array-data 4
        0x7f1302ed
        0x7f1302ee
        0x7f1302ef
        0x7f1302f2
        0x7f1302f1
        0x7f1302f4
        0x7f1302f6
        0x7f1302f7
        0x7f1302f8
        0x7f1302fb
        0x7f1302fa
        0x7f130304
        0x7f13030d
        0x7f130305
        0x7f1302fd
        0x7f130301
        0x7f130308
        0x7f1302fe
        0x7f13030e
        0x7f130300
        0x7f130306
        0x7f130309
        0x7f13030a
        0x7f130312
        0x7f13030c
        0x7f130310
        0x7f130302
        0x7f130084
        0x7f130307
    .end array-data
.end method

.method private addExternalTiles(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/dashboard/DashboardCategory;>;"
    const/4 v6, 0x0

    .line 1361
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "device_provisioned"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 1363
    return-void

    .line 1366
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1367
    .local v0, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/cyanogenmod/settings/dashboard/DashboardTile;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1368
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1369
    .local v1, "user":Landroid/os/UserHandle;
    invoke-direct {p0, p1, v1, v0}, Lcom/cyanogenmod/settings/SettingsActivity;->addExternalTiles(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V

    goto :goto_0

    .line 1360
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_1
    return-void
.end method

.method private addExternalTiles(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V
    .locals 15
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/dashboard/DashboardCategory;",
            ">;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cyanogenmod/settings/dashboard/DashboardTile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1375
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/dashboard/DashboardCategory;>;"
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/cyanogenmod/settings/dashboard/DashboardTile;>;"
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1376
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v12, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1378
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    const/16 v13, 0x80

    .line 1377
    invoke-virtual {v7, v4, v13, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 1379
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "resolved$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1380
    .local v8, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v12, v8, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v12, :cond_0

    .line 1384
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1385
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1386
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    const-string/jumbo v12, "com.android.settings.category"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1392
    const-string/jumbo v12, "com.android.settings.category"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1393
    .local v3, "categoryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/cyanogenmod/settings/SettingsActivity;->getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/cyanogenmod/settings/dashboard/DashboardCategory;

    move-result-object v2

    .line 1394
    .local v2, "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    if-nez v2, :cond_3

    .line 1395
    const-string/jumbo v12, "Settings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " has unknown "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1396
    const-string/jumbo v14, "category key "

    .line 1395
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1387
    .end local v2    # "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    .end local v3    # "categoryKey":Ljava/lang/String;
    :cond_1
    const-string/jumbo v13, "Settings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Found "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, " for action "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1388
    const-string/jumbo v14, "com.android.settings.action.EXTRA_SETTINGS"

    .line 1387
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1388
    const-string/jumbo v14, " missing metadata "

    .line 1387
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1389
    if-nez v6, :cond_2

    const-string/jumbo v12, ""

    .line 1387
    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1389
    :cond_2
    const-string/jumbo v12, "com.android.settings.category"

    goto :goto_1

    .line 1399
    .restart local v2    # "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    .restart local v3    # "categoryKey":Ljava/lang/String;
    :cond_3
    new-instance v5, Landroid/util/Pair;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1400
    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1399
    invoke-direct {v5, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1401
    .local v5, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cyanogenmod/settings/dashboard/DashboardTile;

    .line 1402
    .local v11, "tile":Lcom/cyanogenmod/settings/dashboard/DashboardTile;
    if-nez v11, :cond_5

    .line 1403
    new-instance v11, Lcom/cyanogenmod/settings/dashboard/DashboardTile;

    .end local v11    # "tile":Lcom/cyanogenmod/settings/dashboard/DashboardTile;
    invoke-direct {v11}, Lcom/cyanogenmod/settings/dashboard/DashboardTile;-><init>()V

    .line 1404
    .restart local v11    # "tile":Lcom/cyanogenmod/settings/dashboard/DashboardTile;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1405
    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1404
    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    iput-object v12, v11, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 1406
    invoke-static {p0, v11}, Lcom/cyanogenmod/settings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/cyanogenmod/settings/dashboard/DashboardTile;)Z

    .line 1408
    iget v12, v2, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->externalIndex:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 1409
    iget v12, v2, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->externalIndex:I

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v13

    if-le v12, v13, :cond_6

    .line 1412
    :cond_4
    invoke-virtual {v2, v11}, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->addTile(Lcom/cyanogenmod/settings/dashboard/DashboardTile;)V

    .line 1416
    :goto_2
    move-object/from16 v0, p3

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    :cond_5
    iget-object v12, v11, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1414
    :cond_6
    iget v12, v2, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->externalIndex:I

    invoke-virtual {v2, v12, v11}, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->addTile(ILcom/cyanogenmod/settings/dashboard/DashboardTile;)V

    goto :goto_2

    .line 1374
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    .end local v3    # "categoryKey":Ljava/lang/String;
    .end local v5    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v8    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v11    # "tile":Lcom/cyanogenmod/settings/dashboard/DashboardTile;
    :cond_7
    return-void
.end method

.method private buildDashboardCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1078
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1079
    const v0, 0x7f080019

    invoke-static {v0, p1, p0}, Lcom/cyanogenmod/settings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    .line 1080
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/SettingsActivity;->updateTilesList(Ljava/util/List;)V

    .line 1077
    return-void
.end method

.method private getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    .locals 3
    .param p2, "categoryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/dashboard/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cyanogenmod/settings/dashboard/DashboardCategory;"
        }
    .end annotation

    .prologue
    .line 1423
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "category$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;

    .line 1424
    .local v0, "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    iget-object v2, v0, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1425
    return-object v0

    .line 1428
    .end local v0    # "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 739
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1470
    :try_start_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1471
    const/16 v4, 0x80

    .line 1470
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1472
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 1473
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-void

    .line 1474
    :catch_0
    move-exception v1

    .line 1476
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 921
    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object v1

    .line 923
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 926
    :cond_1
    const-string/jumbo v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 927
    const-string/jumbo v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 926
    if-nez v1, :cond_2

    .line 928
    const-string/jumbo v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 926
    if-eqz v1, :cond_3

    .line 930
    :cond_2
    const-class v1, Lcom/cyanogenmod/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 933
    :cond_3
    return-object v0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 494
    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 496
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 497
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 493
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 557
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 559
    return v3

    .line 561
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/cyanogenmod/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 562
    sget-object v2, Lcom/cyanogenmod/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 561
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    :cond_2
    return v3
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 553
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V
    .locals 21
    .param p0, "resid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/dashboard/DashboardCategory;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1092
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/dashboard/DashboardCategory;>;"
    const/4 v13, 0x0

    .line 1094
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 1095
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v13}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1098
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    .local v17, "type":I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 1099
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1103
    :cond_1
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1104
    .local v11, "nodeName":Ljava/lang/String;
    const-string/jumbo v18, "dashboard-categories"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1105
    new-instance v18, Ljava/lang/RuntimeException;

    .line 1106
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1107
    const-string/jumbo v20, " at "

    .line 1106
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1107
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    .line 1106
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1105
    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v17    # "type":I
    :catch_0
    move-exception v6

    .line 1244
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v18, Ljava/lang/RuntimeException;

    const-string/jumbo v19, "Error parsing categories"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1247
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v18

    .line 1248
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1247
    :cond_2
    throw v18

    .line 1110
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "type":I
    :cond_3
    const/4 v4, 0x0

    .line 1112
    .local v4, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 1113
    .end local v4    # "curBundle":Landroid/os/Bundle;
    .local v12, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1b

    .line 1114
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v12, :cond_1b

    .line 1115
    :cond_5
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 1119
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1120
    const-string/jumbo v18, "dashboard-category"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 1121
    new-instance v3, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;

    invoke-direct {v3}, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;-><init>()V

    .line 1124
    .local v3, "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    sget-object v18, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    .line 1123
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1126
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/16 v18, 0x1

    .line 1127
    const/16 v19, -0x1

    .line 1125
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->id:J

    .line 1130
    const/16 v18, 0x2

    .line 1129
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 1131
    .local v16, "tv":Landroid/util/TypedValue;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1132
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 1133
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v3, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->titleRes:I

    .line 1138
    :cond_6
    :goto_1
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1140
    sget-object v18, Lcom/android/internal/R$styleable;->Preference:[I

    .line 1139
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1142
    const/16 v18, 0x6

    .line 1141
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 1143
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 1144
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 1145
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    .line 1150
    :cond_7
    :goto_2
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1152
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1153
    .local v7, "innerDepth":I
    :cond_8
    :goto_3
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_19

    .line 1154
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v7, :cond_19

    .line 1155
    :cond_9
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 1159
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1160
    .local v9, "innerNodeName":Ljava/lang/String;
    const-string/jumbo v18, "dashboard-tile"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1161
    new-instance v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;

    invoke-direct {v15}, Lcom/cyanogenmod/settings/dashboard/DashboardTile;-><init>()V

    .line 1164
    .local v15, "tile":Lcom/cyanogenmod/settings/dashboard/DashboardTile;
    sget-object v18, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    .line 1163
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1166
    const/16 v18, 0x1

    .line 1167
    const/16 v19, -0x1

    .line 1165
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->id:J

    .line 1169
    const/16 v18, 0x2

    .line 1168
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 1170
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1171
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1172
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->titleRes:I

    .line 1178
    :cond_a
    :goto_4
    const/16 v18, 0x3

    .line 1177
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 1179
    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1180
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 1181
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->summaryRes:I

    .line 1187
    :cond_b
    :goto_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1186
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->iconRes:I

    .line 1189
    const/16 v18, 0x4

    .line 1188
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1190
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1192
    sget-object v18, Lcom/cyanogenmod/settings/R$styleable;->DashboardTile:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1194
    const/16 v18, 0x0

    .line 1193
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    .line 1195
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1197
    if-nez v4, :cond_c

    .line 1198
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1201
    :cond_c
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 1202
    .local v8, "innerDepth2":I
    :cond_d
    :goto_6
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 1203
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v8, :cond_15

    .line 1204
    :cond_e
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 1208
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1209
    .local v10, "innerNodeName2":Ljava/lang/String;
    const-string/jumbo v18, "extra"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string/jumbo v19, "extra"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1212
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 1245
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    .end local v7    # "innerDepth":I
    .end local v8    # "innerDepth2":I
    .end local v9    # "innerNodeName":Ljava/lang/String;
    .end local v10    # "innerNodeName2":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tile":Lcom/cyanogenmod/settings/dashboard/DashboardTile;
    .end local v16    # "tv":Landroid/util/TypedValue;
    .end local v17    # "type":I
    :catch_1
    move-exception v5

    .line 1246
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v18, Ljava/lang/RuntimeException;

    const-string/jumbo v19, "Error parsing categories"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1135
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v12    # "outerDepth":I
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "tv":Landroid/util/TypedValue;
    .restart local v17    # "type":I
    :cond_f
    :try_start_4
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1147
    :cond_10
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    goto/16 :goto_2

    .line 1174
    .restart local v7    # "innerDepth":I
    .restart local v9    # "innerNodeName":Ljava/lang/String;
    .restart local v15    # "tile":Lcom/cyanogenmod/settings/dashboard/DashboardTile;
    :cond_11
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1183
    :cond_12
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 1214
    .restart local v8    # "innerDepth2":I
    .restart local v10    # "innerNodeName2":Ljava/lang/String;
    :cond_13
    const-string/jumbo v18, "intent"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v13, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 1219
    :cond_14
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 1223
    .end local v10    # "innerNodeName2":Ljava/lang/String;
    :cond_15
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v18

    if-lez v18, :cond_16

    .line 1224
    iput-object v4, v15, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1225
    const/4 v4, 0x0

    .line 1228
    :cond_16
    invoke-virtual {v3, v15}, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->addTile(Lcom/cyanogenmod/settings/dashboard/DashboardTile;)V

    goto/16 :goto_3

    .line 1230
    .end local v8    # "innerDepth2":I
    .end local v15    # "tile":Lcom/cyanogenmod/settings/dashboard/DashboardTile;
    :cond_17
    const-string/jumbo v18, "external-tiles"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 1231
    invoke-virtual {v3}, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v18

    move/from16 v0, v18

    iput v0, v3, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->externalIndex:I

    goto/16 :goto_3

    .line 1233
    :cond_18
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 1237
    .end local v9    # "innerNodeName":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1239
    .end local v3    # "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    .end local v7    # "innerDepth":I
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v16    # "tv":Landroid/util/TypedValue;
    :cond_1a
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1248
    :cond_1b
    if-eqz v13, :cond_1c

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1091
    :cond_1c
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 1495
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cyanogenmod/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1494
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1558
    iput-boolean v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1559
    iput-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    .line 1560
    iput-boolean v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1561
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":settings:prefs"

    .line 1562
    const/4 v2, 0x1

    .line 1561
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1563
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1557
    :cond_0
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 778
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 780
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 781
    iget v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 782
    iget v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitle(I)V

    .line 786
    :goto_0
    return v3

    .line 784
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 790
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    .line 792
    return v1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 797
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 798
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 799
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 803
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 795
    :cond_0
    return-void

    .line 801
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 743
    const-string/jumbo v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 744
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 745
    iput-object v7, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 746
    iput v3, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitleResId:I

    .line 749
    const-string/jumbo v5, ":settings:show_fragment_title_res_package_name"

    .line 748
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 750
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 753
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    .line 752
    invoke-virtual {p0, v4, v6, v5}, Lcom/cyanogenmod/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 754
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 755
    iget-object v5, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 756
    const/4 v5, -0x1

    iput v5, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    return-void

    .line 758
    .end local v0    # "authContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 762
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_0
    iget v5, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 765
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitleResId:I

    .line 766
    const-string/jumbo v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 768
    iget-object v5, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 767
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 1049
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1053
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1054
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1055
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f13021c

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1056
    if-eqz p7, :cond_1

    .line 1057
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1059
    :cond_1
    if-eqz p4, :cond_2

    .line 1060
    const-string/jumbo v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1062
    :cond_2
    if-lez p5, :cond_5

    .line 1063
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1067
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1068
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1069
    return-object v0

    .line 1050
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1064
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_5
    if-eqz p6, :cond_3

    .line 1065
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1538
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1539
    return-void

    .line 1541
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f13021c

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1542
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1543
    check-cast v8, Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    .line 1549
    :goto_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1550
    iput-boolean v4, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1537
    return-void

    .line 1546
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1547
    const v5, 0x7f0c0d2b

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    .line 1545
    invoke-direct/range {v0 .. v7}, Lcom/cyanogenmod/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    goto :goto_0
.end method

.method private updateHomeSettingTiles(Lcom/cyanogenmod/settings/dashboard/DashboardTile;)Z
    .locals 6
    .param p1, "tile"    # Lcom/cyanogenmod/settings/dashboard/DashboardTile;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1433
    const-string/jumbo v2, "home_prefs"

    invoke-virtual {p0, v2, v4}, Lcom/cyanogenmod/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1434
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "do_show"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1435
    return v5

    .line 1439
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1440
    iget v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mHomeActivitiesCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 1445
    sget-boolean v2, Lcom/cyanogenmod/settings/SettingsActivity;->sShowNoHomeNotice:Z

    if-eqz v2, :cond_1

    .line 1446
    const/4 v2, 0x0

    sput-boolean v2, Lcom/cyanogenmod/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1447
    invoke-static {p0}, Lcom/cyanogenmod/settings/dashboard/NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    .line 1449
    :cond_1
    return v4

    .line 1454
    :cond_2
    iget-object v2, p1, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v2, :cond_3

    .line 1455
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p1, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1457
    :cond_3
    iget-object v2, p1, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string/jumbo v3, "show"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "do_show"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1465
    return v5

    .line 1459
    :catch_0
    move-exception v0

    .line 1461
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Settings"

    const-string/jumbo v3, "Problem looking up home activity!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateTilesList(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1253
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1254
    const-string/jumbo v16, "show"

    .line 1255
    sget-object v17, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v18, "eng"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 1253
    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1257
    .local v10, "showDev":Z
    const-string/jumbo v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/cyanogenmod/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 1259
    .local v14, "um":Landroid/os/UserManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 1260
    .local v12, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v12, :cond_18

    .line 1262
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;

    .line 1265
    .local v2, "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    iget-wide v0, v2, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 1266
    .local v7, "id":I
    invoke-virtual {v2}, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v15

    add-int/lit8 v8, v15, -0x1

    .line 1267
    .local v8, "n":I
    :goto_1
    if-ltz v8, :cond_17

    .line 1269
    invoke-virtual {v2, v8}, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->getTile(I)Lcom/cyanogenmod/settings/dashboard/DashboardTile;

    move-result-object v13

    .line 1270
    .local v13, "tile":Lcom/cyanogenmod/settings/dashboard/DashboardTile;
    const/4 v9, 0x0

    .line 1271
    .local v9, "removeTile":Z
    iget-wide v0, v13, Lcom/cyanogenmod/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 1272
    const v15, 0x7f1302f3

    if-eq v7, v15, :cond_0

    const v15, 0x7f1302f5

    if-ne v7, v15, :cond_4

    .line 1273
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/cyanogenmod/settings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/cyanogenmod/settings/dashboard/DashboardTile;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1274
    const/4 v9, 0x1

    .line 1346
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-eqz v15, :cond_2

    .line 1347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cyanogenmod/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 1351
    :cond_2
    :goto_3
    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v15

    if-ge v8, v15, :cond_3

    .line 1352
    invoke-virtual {v2, v8}, Lcom/cyanogenmod/settings/dashboard/DashboardCategory;->removeTile(I)V

    .line 1354
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1276
    :cond_4
    const v15, 0x7f1302ee

    if-ne v7, v15, :cond_5

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string/jumbo v16, "android.hardware.wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1279
    const/4 v9, 0x1

    goto :goto_2

    .line 1281
    :cond_5
    const v15, 0x7f1302ef

    if-ne v7, v15, :cond_6

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string/jumbo v16, "android.hardware.bluetooth"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1284
    const/4 v9, 0x1

    goto :goto_2

    .line 1286
    :cond_6
    const v15, 0x7f1302f0

    if-ne v7, v15, :cond_8

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string/jumbo v16, "android.hardware.telephony"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1288
    invoke-static/range {p0 .. p0}, Lcom/cyanogenmod/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v15

    .line 1287
    if-eqz v15, :cond_1

    .line 1289
    :cond_7
    const/4 v9, 0x1

    goto :goto_2

    .line 1291
    :cond_8
    const v15, 0x7f1302f1

    if-ne v7, v15, :cond_9

    .line 1292
    invoke-static/range {p0 .. p0}, Lcom/cyanogenmod/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1293
    const/4 v9, 0x1

    goto :goto_2

    .line 1295
    :cond_9
    const v15, 0x7f1302f2

    if-ne v7, v15, :cond_a

    .line 1297
    invoke-static {}, Lcom/cyanogenmod/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1298
    const/4 v9, 0x1

    goto :goto_2

    .line 1300
    :cond_a
    const v15, 0x7f1302fd

    if-ne v7, v15, :cond_b

    .line 1303
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mBatteryPresent:Z

    if-nez v15, :cond_1

    .line 1304
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1306
    :cond_b
    const v15, 0x7f130302

    if-ne v7, v15, :cond_c

    .line 1307
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/cyanogenmod/settings/SettingsActivity;->updateHomeSettingTiles(Lcom/cyanogenmod/settings/dashboard/DashboardTile;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1308
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1310
    :cond_c
    const v15, 0x7f130300

    if-ne v7, v15, :cond_f

    .line 1312
    const-string/jumbo v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/cyanogenmod/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->getUserCount()I

    move-result v15

    .line 1313
    const/16 v16, 0x1

    .line 1312
    move/from16 v0, v16

    if-le v15, v0, :cond_e

    const/4 v4, 0x1

    .line 1315
    .local v4, "hasMultipleUsers":Z
    :goto_4
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1316
    invoke-static {}, Lcom/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v15

    .line 1314
    if-eqz v15, :cond_1

    .line 1317
    :cond_d
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1312
    .end local v4    # "hasMultipleUsers":Z
    :cond_e
    const/4 v4, 0x0

    .restart local v4    # "hasMultipleUsers":Z
    goto :goto_4

    .line 1319
    .end local v4    # "hasMultipleUsers":Z
    :cond_f
    const v15, 0x7f130310

    if-ne v7, v15, :cond_10

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1321
    const-string/jumbo v16, "android.software.print"

    .line 1320
    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 1322
    .local v5, "hasPrintingSupport":Z
    if-nez v5, :cond_1

    .line 1323
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1325
    .end local v5    # "hasPrintingSupport":Z
    :cond_10
    const v15, 0x7f130311

    if-ne v7, v15, :cond_12

    .line 1326
    if-eqz v10, :cond_11

    .line 1327
    const-string/jumbo v15, "no_debugging_features"

    .line 1326
    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1328
    :cond_11
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1330
    :cond_12
    const v15, 0x7f1302fc

    if-ne v7, v15, :cond_14

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1332
    const v16, 0x10e0062

    .line 1331
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    if-eqz v15, :cond_13

    const/4 v3, 0x1

    .line 1333
    .local v3, "hasDeviceKeys":Z
    :goto_5
    if-nez v3, :cond_1

    .line 1334
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1331
    .end local v3    # "hasDeviceKeys":Z
    :cond_13
    const/4 v3, 0x0

    .restart local v3    # "hasDeviceKeys":Z
    goto :goto_5

    .line 1336
    .end local v3    # "hasDeviceKeys":Z
    :cond_14
    const v15, 0x7f13030b

    if-ne v7, v15, :cond_1

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1338
    const v16, 0x7f10001b

    .line 1337
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 1340
    .local v11, "showWeatherMenu":Z
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1341
    const-string/jumbo v16, "org.cyanogenmod.weather"

    .line 1340
    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 1341
    if-nez v11, :cond_1

    .line 1342
    :cond_15
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1348
    .end local v11    # "showWeatherMenu":Z
    :cond_16
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1260
    .end local v9    # "removeTile":Z
    .end local v13    # "tile":Lcom/cyanogenmod/settings/dashboard/DashboardTile;
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1357
    .end local v2    # "category":Lcom/cyanogenmod/settings/dashboard/DashboardCategory;
    .end local v7    # "id":I
    .end local v8    # "n":I
    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/cyanogenmod/settings/SettingsActivity;->addExternalTiles(Ljava/util/List;)V

    .line 1252
    return-void
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1021
    invoke-virtual {p0, p2, p3}, Lcom/cyanogenmod/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1022
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->finish()V

    .line 1020
    return-void
.end method

.method public getDashboardCategories(Z)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 896
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 897
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 901
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 902
    .local v2, "modIntent":Landroid/content/Intent;
    const-string/jumbo v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 904
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 905
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 909
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 910
    const-string/jumbo v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 911
    return-object v2

    .line 907
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .line 913
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    return-object v4
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSwitchBar()Lcom/cyanogenmod/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 888
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/cyanogenmod/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 889
    sget-object v1, Lcom/cyanogenmod/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 888
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1553
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 773
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1516
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 504
    invoke-static {p0}, Lcom/cyanogenmod/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/cyanogenmod/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/search/Index;->update()V

    .line 502
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 569
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getMetaData()V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 575
    .local v19, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "settings:ui_options"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string/jumbo v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 579
    :cond_0
    const-string/jumbo v2, "development"

    .line 580
    const/4 v5, 0x0

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/cyanogenmod/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 583
    const-string/jumbo v2, ":settings:show_fragment"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/cyanogenmod/settings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static/range {v19 .. v19}, Lcom/cyanogenmod/settings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 586
    const-string/jumbo v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 585
    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mIsShortcut:Z

    .line 588
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 589
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 591
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lcom/cyanogenmod/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 596
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/cyanogenmod/settings/SubSettings;

    if-nez v2, :cond_9

    .line 597
    const-string/jumbo v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 600
    :goto_1
    if-eqz v20, :cond_1

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getThemeResId()I

    move-result v22

    .line 603
    .local v22, "themeResId":I
    const v2, 0x7f0d006e

    move/from16 v0, v22

    if-eq v0, v2, :cond_1

    .line 604
    const v2, 0x7f0d0070

    move/from16 v0, v22

    if-eq v0, v2, :cond_1

    .line 605
    const v2, 0x7f0d0069

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->setTheme(I)V

    .line 609
    .end local v22    # "themeResId":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_a

    .line 610
    const v2, 0x7f040104

    .line 609
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->setContentView(I)V

    .line 612
    const v2, 0x7f13021c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 616
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_2

    .line 618
    invoke-static/range {p0 .. p0}, Lcom/cyanogenmod/settings/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cyanogenmod/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/cyanogenmod/settings/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/search/Index;->update()V

    .line 625
    :cond_2
    :goto_3
    if-eqz p1, :cond_c

    .line 628
    const-string/jumbo v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 629
    const-string/jumbo v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 631
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 634
    const-string/jumbo v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 635
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cyanogenmod/settings/dashboard/DashboardCategory;>;"
    if-eqz v16, :cond_3

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 641
    :cond_3
    const-string/jumbo v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 642
    const-string/jumbo v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplaySearch:Z

    .line 643
    const-string/jumbo v2, ":settings:home_activities_count"

    .line 644
    const/4 v5, 0x1

    .line 643
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 672
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cyanogenmod/settings/dashboard/DashboardCategory;>;"
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_4

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 677
    :cond_4
    const v2, 0x7f13021d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mSwitchBar:Lcom/cyanogenmod/settings/widget/SwitchBar;

    .line 680
    const-string/jumbo v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 682
    const v2, 0x7f13011c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 683
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_7

    .line 684
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 686
    const v2, 0x7f13019c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 687
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/cyanogenmod/settings/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/cyanogenmod/settings/SettingsActivity$3;-><init>(Lcom/cyanogenmod/settings/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    const v2, 0x7f13019d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 694
    .local v21, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/cyanogenmod/settings/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/cyanogenmod/settings/SettingsActivity$4;-><init>(Lcom/cyanogenmod/settings/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    const v2, 0x7f130050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/cyanogenmod/settings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/cyanogenmod/settings/SettingsActivity$5;-><init>(Lcom/cyanogenmod/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 710
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 711
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 718
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_5
    :goto_5
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 719
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 720
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 721
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 727
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_6
    :goto_6
    const-string/jumbo v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 728
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 733
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v21    # "skipButton":Landroid/widget/Button;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 568
    return-void

    .line 585
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 596
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_9
    const/16 v20, 0x1

    .local v20, "isSubSettings":Z
    goto/16 :goto_1

    .line 610
    .end local v20    # "isSubSettings":Z
    :cond_a
    const v2, 0x7f040105

    goto/16 :goto_2

    .line 621
    :cond_b
    const-string/jumbo v2, "Settings"

    const-string/jumbo v5, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 646
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_10

    .line 647
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v5, 0x3e8

    if-ne v2, v5, :cond_d

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplaySearch:Z

    .line 649
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_e

    .line 650
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 656
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 658
    const-string/jumbo v2, ":settings:show_fragment_args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 660
    .local v4, "initialArguments":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 659
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 660
    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 659
    invoke-direct/range {v2 .. v9}, Lcom/cyanogenmod/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_4

    .line 647
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 651
    :cond_e
    if-eqz v20, :cond_f

    .line 652
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_8

    .line 654
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_8

    .line 663
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 665
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplaySearch:Z

    .line 666
    const v2, 0x7f0c0d2a

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitleResId:I

    .line 667
    const-class v2, Lcom/cyanogenmod/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 668
    move-object/from16 v0, p0

    iget v10, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 667
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 668
    const/4 v12, 0x0

    move-object/from16 v5, p0

    .line 667
    invoke-direct/range {v5 .. v12}, Lcom/cyanogenmod/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_4

    .line 715
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v21    # "skipButton":Landroid/widget/Button;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cyanogenmod/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 724
    :cond_12
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 518
    iget-boolean v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplaySearch:Z

    if-nez v2, :cond_0

    .line 519
    return v3

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 523
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f140008

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 526
    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 528
    .local v1, "query":Ljava/lang/String;
    const v2, 0x7f130331

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 529
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 531
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v2, :cond_2

    .line 532
    :cond_1
    return v3

    .line 535
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    if-eqz v2, :cond_3

    .line 536
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    iget-object v3, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 539
    :cond_3
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 540
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 541
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 543
    iget-boolean v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v2, :cond_4

    .line 544
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 546
    :cond_4
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 548
    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 878
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 880
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 881
    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 880
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 877
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1529
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1530
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1531
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->revertToInitialFragment()V

    .line 1534
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1521
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1522
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1524
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1582
    const-string/jumbo v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1583
    const-string/jumbo v1, "android.nfc.extra.TAG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 1584
    .local v0, "detectedTag":Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mNfcProfileCallback:Lcom/cyanogenmod/settings/profiles/NFCProfileTagCallback;

    if-eqz v1, :cond_0

    .line 1585
    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mNfcProfileCallback:Lcom/cyanogenmod/settings/profiles/NFCProfileTagCallback;

    invoke-interface {v1, v0}, Lcom/cyanogenmod/settings/profiles/NFCProfileTagCallback;->onTagRead(Landroid/nfc/Tag;)V

    .line 1587
    :cond_0
    return-void

    .line 1589
    .end local v0    # "detectedTag":Landroid/nfc/Tag;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1581
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 868
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 869
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_0

    .line 870
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 873
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/cyanogenmod/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/search/DynamicIndexableContentMonitor;->unregister()V

    .line 867
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    .line 472
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 473
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/cyanogenmod/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const v3, 0x7f0c06f8

    .line 483
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 484
    const/4 v5, 0x0

    move-object v0, p0

    .line 483
    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 485
    const/4 v0, 0x1

    return v0

    .line 475
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/cyanogenmod/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    const v3, 0x7f0c04fe

    goto :goto_0

    .line 480
    :cond_2
    const v3, 0x7f0c04fc

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1508
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1509
    const/4 v0, 0x0

    return v0

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1500
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1501
    iput-object p1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1502
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchResultsFragment:Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/settings/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 837
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 838
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v1, :cond_0

    .line 839
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 842
    :cond_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 843
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_1

    .line 844
    iput v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 845
    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->invalidateCategories(Z)V

    .line 848
    :cond_1
    new-instance v1, Lcom/cyanogenmod/settings/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/SettingsActivity$6;-><init>(Lcom/cyanogenmod/settings/SettingsActivity;)V

    iput-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 854
    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 855
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 854
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 857
    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/cyanogenmod/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 859
    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/cyanogenmod/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1, p0}, Lcom/cyanogenmod/settings/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 861
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 836
    :cond_2
    :goto_0
    return-void

    .line 862
    :cond_3
    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 810
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 812
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 813
    const-string/jumbo v2, ":settings:categories"

    iget-object v3, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 816
    :cond_0
    const-string/jumbo v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 817
    const-string/jumbo v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 819
    iget-boolean v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 825
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 826
    :goto_0
    const-string/jumbo v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 828
    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ":settings:home_activities_count"

    iget v3, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 809
    return-void

    .line 825
    :cond_2
    const/4 v0, 0x0

    .local v0, "isExpanded":Z
    goto :goto_0

    .line 828
    .end local v0    # "isExpanded":Z
    :cond_3
    const-string/jumbo v1, ""

    .restart local v1    # "query":Ljava/lang/String;
    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 511
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->revertToInitialFragment()V

    .line 508
    :cond_0
    return-void
.end method

.method public setNfcProfileCallback(Lcom/cyanogenmod/settings/profiles/NFCProfileTagCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/cyanogenmod/settings/profiles/NFCProfileTagCallback;

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mNfcProfileCallback:Lcom/cyanogenmod/settings/profiles/NFCProfileTagCallback;

    .line 1576
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1572
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1491
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyanogenmod/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1033
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1034
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f13021c

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1035
    if-eqz p2, :cond_0

    .line 1036
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1037
    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1041
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1032
    return-void

    .line 1039
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 957
    const/4 v6, 0x0

    .line 958
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 959
    if-eqz p4, :cond_1

    .line 960
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 967
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    .line 966
    invoke-static/range {v0 .. v7}, Lcom/cyanogenmod/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 956
    return-void

    .line 963
    .restart local v6    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ""

    .local v6, "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 994
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 995
    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 983
    :goto_0
    return-void

    .line 997
    :cond_0
    const/4 v4, 0x0

    .line 998
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 999
    if-eqz p4, :cond_2

    .line 1000
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1007
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/cyanogenmod/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    .line 1006
    invoke-static/range {v0 .. v6}, Lcom/cyanogenmod/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 1003
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    .local v4, "title":Ljava/lang/String;
    goto :goto_1
.end method
