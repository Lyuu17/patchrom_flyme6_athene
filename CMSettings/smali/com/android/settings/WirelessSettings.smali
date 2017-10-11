.class public Lcom/cyanogenmod/settings/WirelessSettings;
.super Lcom/cyanogenmod/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/WirelessSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAirplaneModeEnabler:Lcom/cyanogenmod/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mButtonWfc:Landroid/preference/PreferenceScreen;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/cyanogenmod/settings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/cyanogenmod/settings/NsdEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -set0(Lcom/cyanogenmod/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 435
    new-instance v0, Lcom/cyanogenmod/settings/WirelessSettings$1;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/WirelessSettings$1;-><init>()V

    .line 434
    sput-object v0, Lcom/cyanogenmod/settings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string/jumbo v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 428
    const v0, 0x7f0c0cca

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 417
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 418
    const-string/jumbo v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 420
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/cyanogenmod/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 421
    iget-object v3, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    .line 420
    invoke-virtual {v1, v2, v3}, Lcom/cyanogenmod/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 423
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 416
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super/range {p0 .. p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 219
    if-eqz p1, :cond_0

    .line 220
    const-string/jumbo v22, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 222
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v22, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 225
    const-string/jumbo v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 227
    const-string/jumbo v22, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 229
    const v22, 0x7f080073

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 231
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 232
    .local v12, "myUserId":I
    if-eqz v12, :cond_10

    const/4 v8, 0x1

    .line 234
    .local v8, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 235
    .local v2, "activity":Landroid/app/Activity;
    const-string/jumbo v22, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 236
    const-string/jumbo v22, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    .line 237
    .local v13, "nfc":Landroid/preference/SwitchPreference;
    const-string/jumbo v22, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 238
    .local v3, "androidBeam":Landroid/preference/PreferenceScreen;
    const-string/jumbo v22, "nfc_payment_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceScreen;

    .line 239
    .local v15, "nfcPayment":Landroid/preference/PreferenceScreen;
    const-string/jumbo v22, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/SwitchPreference;

    .line 241
    .local v16, "nsd":Landroid/preference/SwitchPreference;
    const-string/jumbo v22, "nfc_category_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 240
    check-cast v14, Landroid/preference/PreferenceCategory;

    .line 243
    .local v14, "nfcCategory":Landroid/preference/PreferenceCategory;
    new-instance v22, Lcom/cyanogenmod/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Lcom/cyanogenmod/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/cyanogenmod/settings/AirplaneModeEnabler;

    .line 244
    new-instance v22, Lcom/cyanogenmod/settings/nfc/NfcEnabler;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v13, v3, v15}, Lcom/cyanogenmod/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/cyanogenmod/settings/nfc/NfcEnabler;

    .line 246
    const-string/jumbo v22, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 253
    const-string/jumbo v23, "airplane_mode_toggleable_radios"

    .line 252
    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 256
    .local v21, "toggleable":Ljava/lang/String;
    if-nez v8, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 257
    const v23, 0x1120076

    .line 256
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 258
    :goto_1
    if-eqz v9, :cond_1

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "no_config_mobile_networks"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    .line 258
    if-eqz v22, :cond_12

    .line 260
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 261
    .local v20, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v22, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 262
    .local v19, "ps":Landroid/preference/Preference;
    if-eqz v19, :cond_2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    .end local v19    # "ps":Landroid/preference/Preference;
    .end local v20    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    :goto_2
    if-eqz v21, :cond_14

    const-string/jumbo v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 276
    :goto_3
    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "no_config_vpn"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 277
    :cond_3
    const-string/jumbo v22, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 281
    :cond_4
    if-eqz v21, :cond_5

    const-string/jumbo v22, "bluetooth"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 286
    :cond_5
    if-eqz v21, :cond_15

    const-string/jumbo v22, "nfc"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 293
    :goto_4
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v22, v0

    if-nez v22, :cond_16

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/cyanogenmod/settings/nfc/NfcEnabler;

    .line 304
    :cond_6
    :goto_5
    if-nez v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "no_config_mobile_networks"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    .line 304
    if-eqz v22, :cond_8

    .line 306
    :cond_7
    const-string/jumbo v22, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 311
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 312
    const v23, 0x7f100008

    .line 311
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 313
    .local v7, "isMobilePlanEnabled":Z
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 314
    :cond_9
    const-string/jumbo v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 315
    .local v18, "pref":Landroid/preference/Preference;
    if-eqz v18, :cond_a

    .line 316
    const-string/jumbo v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 321
    .end local v18    # "pref":Landroid/preference/Preference;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "android.hardware.type.television"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 322
    const-string/jumbo v22, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 326
    :cond_b
    const-string/jumbo v22, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 328
    .local v11, "mGlobalProxy":Landroid/preference/Preference;
    const-string/jumbo v22, "device_policy"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 327
    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 330
    .local v10, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v22

    if-nez v22, :cond_17

    const/16 v22, 0x1

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 335
    const-string/jumbo v22, "connectivity"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 336
    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v8, :cond_c

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "no_config_tethering"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    .line 336
    if-eqz v22, :cond_18

    .line 338
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string/jumbo v23, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 350
    const v23, 0x112007f

    .line 349
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 352
    .local v6, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v6, :cond_d

    .line 353
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "com.android.cellbroadcastreceiver"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 354
    const/16 v23, 0x2

    .line 353
    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 355
    const/4 v6, 0x0

    .line 361
    .end local v6    # "isCellBroadcastAppLinkEnabled":Z
    :cond_d
    :goto_8
    if-nez v8, :cond_e

    if-eqz v6, :cond_e

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "no_config_cell_broadcasts"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    .line 361
    if-eqz v22, :cond_f

    .line 363
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 364
    .restart local v20    # "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v22, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 365
    .restart local v19    # "ps":Landroid/preference/Preference;
    if-eqz v19, :cond_f

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    .end local v19    # "ps":Landroid/preference/Preference;
    .end local v20    # "root":Landroid/preference/PreferenceScreen;
    :cond_f
    return-void

    .line 232
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v7    # "isMobilePlanEnabled":Z
    .end local v8    # "isSecondaryUser":Z
    .end local v10    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v11    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v13    # "nfc":Landroid/preference/SwitchPreference;
    .end local v14    # "nfcCategory":Landroid/preference/PreferenceCategory;
    .end local v15    # "nfcPayment":Landroid/preference/PreferenceScreen;
    .end local v16    # "nsd":Landroid/preference/SwitchPreference;
    .end local v21    # "toggleable":Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    .restart local v8    # "isSecondaryUser":Z
    goto/16 :goto_0

    .line 256
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .restart local v13    # "nfc":Landroid/preference/SwitchPreference;
    .restart local v14    # "nfcCategory":Landroid/preference/PreferenceCategory;
    .restart local v15    # "nfcPayment":Landroid/preference/PreferenceScreen;
    .restart local v16    # "nsd":Landroid/preference/SwitchPreference;
    .restart local v21    # "toggleable":Ljava/lang/String;
    :cond_11
    const/4 v9, 0x0

    .local v9, "isWimaxEnabled":Z
    goto/16 :goto_1

    .line 264
    .end local v9    # "isWimaxEnabled":Z
    :cond_12
    if-eqz v21, :cond_13

    const-string/jumbo v22, "wimax"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    if-eqz v9, :cond_2

    .line 266
    :cond_13
    const-string/jumbo v22, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 267
    .restart local v19    # "ps":Landroid/preference/Preference;
    const-string/jumbo v22, "toggle_airplane"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 273
    .end local v19    # "ps":Landroid/preference/Preference;
    :cond_14
    const-string/jumbo v22, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string/jumbo v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 287
    :cond_15
    const-string/jumbo v22, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string/jumbo v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v22, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string/jumbo v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v22, "nfc_payment_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string/jumbo v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 297
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "android.hardware.nfc.hce"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 299
    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 331
    .restart local v7    # "isMobilePlanEnabled":Z
    .restart local v10    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v11    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_17
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 340
    .restart local v4    # "cm":Landroid/net/ConnectivityManager;
    :cond_18
    const-string/jumbo v22, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 341
    .local v17, "p":Landroid/preference/Preference;
    invoke-static {v4}, Lcom/cyanogenmod/settingslib/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    .line 344
    invoke-static/range {v22 .. v22}, Lcom/cyanogenmod/settings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_19

    const/16 v22, 0x0

    :goto_9
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_19
    const/16 v22, 0x1

    goto :goto_9

    .line 358
    .end local v17    # "p":Landroid/preference/Preference;
    .restart local v6    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v5

    .line 359
    .local v5, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    .local v6, "isCellBroadcastAppLinkEnabled":Z
    goto/16 :goto_8
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 189
    packed-switch p1, :pswitch_data_0

    .line 204
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    iget-object v1, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 191
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/cyanogenmod/settings/WirelessSettings$2;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/WirelessSettings$2;-><init>(Lcom/cyanogenmod/settings/WirelessSettings;)V

    .line 194
    const v2, 0x104000a

    .line 191
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onManageMobilePlanClick()V
    .locals 13

    .prologue
    const v12, 0x7f0c0820

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 122
    const-string/jumbo v8, "onManageMobilePlanClick:"

    invoke-direct {p0, v8}, Lcom/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 123
    iput-object v9, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 126
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 127
    .local v3, "ni":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    .line 129
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v5, "provisioningIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 142
    :cond_0
    iget-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 144
    const-string/jumbo v8, "android.intent.action.MAIN"

    .line 145
    const-string/jumbo v9, "android.intent.category.APP_BROWSER"

    .line 144
    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 146
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 147
    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onManageMobilePlanClick: message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, v11}, Lcom/cyanogenmod/settings/WirelessSettings;->showDialog(I)V

    .line 121
    :cond_1
    return-void

    .line 133
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_3

    .line 134
    const-string/jumbo v8, "WirelessSettings"

    const-string/jumbo v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v5}, Lcom/cyanogenmod/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void

    .line 151
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v8, "WirelessSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "operatorName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 160
    iget-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 163
    const v8, 0x7f0c081f

    .line 162
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    .line 166
    aput-object v4, v8, v10

    .line 165
    invoke-virtual {v6, v12, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 169
    :cond_6
    new-array v8, v11, [Ljava/lang/Object;

    .line 170
    aput-object v4, v8, v10

    .line 169
    invoke-virtual {v6, v12, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 173
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_8

    .line 175
    const v8, 0x7f0c0821

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 178
    :cond_8
    const v8, 0x7f0c0822

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 406
    iget-object v0, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/cyanogenmod/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/AirplaneModeEnabler;->pause()V

    .line 407
    iget-object v0, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/cyanogenmod/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/cyanogenmod/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/nfc/NfcEnabler;->pause()V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mNsdEnabler:Lcom/cyanogenmod/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mNsdEnabler:Lcom/cyanogenmod/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/NsdEnabler;->pause()V

    .line 403
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceTreeClick: preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    .line 107
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    invoke-virtual {p0, v0, v3}, Lcom/cyanogenmod/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    return v3

    .line 113
    :cond_0
    const-string/jumbo v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/WirelessSettings;->onManageMobilePlanClick()V

    .line 117
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 371
    invoke-super {p0}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 373
    iget-object v1, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/cyanogenmod/settings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/AirplaneModeEnabler;->resume()V

    .line 374
    iget-object v1, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/cyanogenmod/settings/nfc/NfcEnabler;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/cyanogenmod/settings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/nfc/NfcEnabler;->resume()V

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mNsdEnabler:Lcom/cyanogenmod/settings/NsdEnabler;

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mNsdEnabler:Lcom/cyanogenmod/settings/NsdEnabler;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/NsdEnabler;->resume()V

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 383
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 386
    iget-object v1, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    .line 387
    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    .line 386
    invoke-static {v0, v2}, Lcom/cyanogenmod/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 370
    :goto_0
    return-void

    .line 389
    :cond_2
    const-string/jumbo v1, "wifi_calling_settings"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 397
    iget-object v0, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    const-string/jumbo v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void
.end method
