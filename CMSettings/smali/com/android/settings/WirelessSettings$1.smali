.class final Lcom/cyanogenmod/settings/WirelessSettings$1;
.super Lcom/cyanogenmod/settings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/cyanogenmod/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v12, "toggle_nsd"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 451
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v12, "user"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 452
    .local v11, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 453
    .local v8, "myUserId":I
    if-eqz v8, :cond_b

    const/4 v5, 0x1

    .line 454
    .local v5, "isSecondaryUser":Z
    :goto_0
    if-nez v5, :cond_c

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 456
    const v13, 0x1120076

    .line 455
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 457
    :goto_1
    if-eqz v6, :cond_0

    .line 458
    const-string/jumbo v12, "no_config_mobile_networks"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v12

    .line 457
    if-eqz v12, :cond_1

    .line 459
    :cond_0
    const-string/jumbo v12, "wimax_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_1
    if-eqz v5, :cond_2

    .line 463
    const-string/jumbo v12, "vpn_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_2
    const-string/jumbo v12, "nfc"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 467
    check-cast v7, Landroid/nfc/NfcManager;

    .line 469
    .local v7, "manager":Landroid/nfc/NfcManager;
    if-eqz v7, :cond_3

    .line 470
    invoke-virtual {v7}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 471
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_d

    .line 472
    const-string/jumbo v12, "toggle_nfc"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const-string/jumbo v12, "android_beam_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const-string/jumbo v12, "nfc_payment_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_3
    :goto_2
    if-nez v5, :cond_4

    invoke-static {p1}, Lcom/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 484
    :cond_4
    const-string/jumbo v12, "mobile_network_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    const-string/jumbo v12, "manage_mobile_plan"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_5
    const-string/jumbo v12, "connectivity"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 488
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 493
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 494
    const v13, 0x7f100008

    .line 493
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 495
    .local v4, "isMobilePlanEnabled":Z
    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 496
    :cond_6
    const-string/jumbo v12, "manage_mobile_plan"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_7
    const-string/jumbo v12, "android.hardware.type.television"

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 501
    const-string/jumbo v12, "toggle_airplane"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_8
    const-string/jumbo v12, "proxy_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    if-nez v5, :cond_e

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 513
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 514
    const v13, 0x112007f

    .line 513
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 516
    .local v3, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v3, :cond_9

    .line 517
    :try_start_0
    const-string/jumbo v12, "com.android.cellbroadcastreceiver"

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 518
    const/4 v13, 0x2

    .line 517
    if-ne v12, v13, :cond_9

    .line 519
    const/4 v3, 0x0

    .line 525
    .end local v3    # "isCellBroadcastAppLinkEnabled":Z
    :cond_9
    :goto_4
    if-nez v5, :cond_f

    if-eqz v3, :cond_f

    .line 529
    :goto_5
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 530
    const-string/jumbo v12, "wifi_calling_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_a
    return-object v10

    .line 453
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "isMobilePlanEnabled":Z
    .end local v5    # "isSecondaryUser":Z
    .end local v7    # "manager":Landroid/nfc/NfcManager;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "isSecondaryUser":Z
    goto/16 :goto_0

    .line 454
    :cond_c
    const/4 v6, 0x0

    .local v6, "isWimaxEnabled":Z
    goto/16 :goto_1

    .line 476
    .end local v6    # "isWimaxEnabled":Z
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .restart local v7    # "manager":Landroid/nfc/NfcManager;
    :cond_d
    const-string/jumbo v12, "android.hardware.nfc.hce"

    .line 475
    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 478
    const-string/jumbo v12, "nfc_payment_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 509
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v4    # "isMobilePlanEnabled":Z
    :cond_e
    const-string/jumbo v12, "tether_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 522
    .restart local v3    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v2

    .line 523
    .local v2, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    .local v3, "isCellBroadcastAppLinkEnabled":Z
    goto :goto_4

    .line 526
    .end local v2    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v3    # "isCellBroadcastAppLinkEnabled":Z
    :cond_f
    const-string/jumbo v12, "cell_broadcast_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f080073

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 441
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
