.class public Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;
.super Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;,
        Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$1;
    }
.end annotation


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryPluggedIn:Z

.field private mBatterySaverPref:Landroid/preference/SwitchPreference;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

.field private mNumPerfProfiles:I

.field private mPerAppProfiles:Landroid/preference/SwitchPreference;

.field private mPerf:Lcyanogenmod/power/PerformanceManager;

.field private mPerfProfileEntries:[Ljava/lang/String;

.field private mPerfProfilePref:Landroid/preference/ListPreference;

.field private mPerfProfileValues:[Ljava/lang/String;

.field private mPerformanceProfileObserver:Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mStatsType:I


# direct methods
.method static synthetic -wrap0(Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePerformanceValue()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    .line 106
    iput v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mNumPerfProfiles:I

    .line 110
    iput v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 635
    new-instance v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 336
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f0c0a20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 338
    iget-object v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 335
    return-void
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 393
    .local v16, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v14, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    .line 395
    .local v11, "numSippers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_b

    .line 396
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    .line 397
    .local v15, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_a

    .line 398
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    .line 402
    .local v13, "realUid":I
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 404
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v17

    .line 403
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 408
    :cond_0
    invoke-static {v13}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->isSystemUid(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 409
    const-string/jumbo v17, "mediaserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 416
    :cond_1
    :goto_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 418
    new-instance v10, Lcom/android/internal/os/BatterySipper;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v17, v0

    .line 419
    new-instance v18, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v20, 0x0

    .line 418
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 420
    .local v10, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 421
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 422
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 423
    move-object v15, v10

    .line 426
    .end local v10    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 427
    .local v7, "index":I
    if-gez v7, :cond_5

    .line 429
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 413
    .restart local v13    # "realUid":I
    :cond_4
    const/16 v13, 0x3e8

    goto :goto_1

    .line 432
    .restart local v7    # "index":I
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 433
    .local v5, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 434
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 435
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 436
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 439
    :cond_6
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 440
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 441
    .local v4, "existingPackageLen":I
    :goto_3
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 442
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .line 443
    .local v8, "newPackageLen":I
    :goto_4
    if-lez v8, :cond_3

    .line 444
    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 445
    .local v9, "newPackages":[Ljava/lang/String;
    if-lez v4, :cond_7

    .line 446
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    :cond_7
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_2

    .line 440
    .end local v4    # "existingPackageLen":I
    .end local v8    # "newPackageLen":I
    .end local v9    # "newPackages":[Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "existingPackageLen":I
    goto :goto_3

    .line 442
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "newPackageLen":I
    goto :goto_4

    .line 455
    .end local v4    # "existingPackageLen":I
    .end local v5    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "index":I
    .end local v8    # "newPackageLen":I
    .end local v13    # "realUid":I
    :cond_a
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 459
    .end local v15    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 460
    .local v12, "numUidSippers":I
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_c

    .line 461
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 465
    :cond_c
    new-instance v17, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct/range {v17 .. v17}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$4;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 471
    return-object v14
.end method

.method private static getFakeStats()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v14, 0x2710

    const/4 v5, 0x0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v1, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    const/high16 v3, 0x40a00000    # 5.0f

    .line 605
    .local v3, "use":F
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v2, v6, v4

    .line 606
    .local v2, "type":Lcom/android/internal/os/BatterySipper$DrainType;
    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v8, :cond_0

    .line 605
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 609
    :cond_0
    new-instance v8, Lcom/android/internal/os/BatterySipper;

    float-to-double v10, v3

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    const/high16 v8, 0x40a00000    # 5.0f

    add-float/2addr v3, v8

    goto :goto_1

    .line 612
    .end local v2    # "type":Lcom/android/internal/os/BatterySipper$DrainType;
    :cond_1
    new-instance v4, Lcom/android/internal/os/BatterySipper;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 613
    new-instance v7, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;

    invoke-direct {v7, v14}, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v8, v3

    .line 612
    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v4, Lcom/android/internal/os/BatterySipper;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 615
    new-instance v7, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;

    invoke-direct {v7, v5}, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v8, v3

    .line 614
    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 619
    new-instance v5, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;

    invoke-static {v14}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;-><init>(I)V

    .line 618
    invoke-direct {v0, v4, v5, v12, v13}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 620
    .local v0, "sipper":Lcom/android/internal/os/BatterySipper;
    const-string/jumbo v4, "dex2oat"

    iput-object v4, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 621
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    .end local v0    # "sipper":Lcom/android/internal/os/BatterySipper;
    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 624
    new-instance v5, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;

    const/16 v6, 0x2711

    invoke-static {v6}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;-><init>(I)V

    .line 623
    invoke-direct {v0, v4, v5, v12, v13}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 625
    .restart local v0    # "sipper":Lcom/android/internal/os/BatterySipper;
    const-string/jumbo v4, "dex2oat"

    iput-object v4, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 626
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    .end local v0    # "sipper":Lcom/android/internal/os/BatterySipper;
    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 629
    new-instance v5, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;

    const/16 v6, 0x3ef

    invoke-static {v6}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/cyanogenmod/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    .line 628
    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 630
    .restart local v0    # "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    return-object v1
.end method

.method private static isSharedGid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 370
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 374
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private refreshBatterySaverOptions()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 361
    iget-object v2, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 363
    iget-object v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    if-eqz v0, :cond_3

    .line 364
    const v0, 0x7f0c02df

    .line 363
    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 359
    :cond_1
    return-void

    .line 361
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 365
    :cond_3
    const v0, 0x7f0c02de

    goto :goto_1
.end method

.method private resetStats()V
    .locals 4

    .prologue
    .line 342
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    const v2, 0x7f0c0392

    .line 342
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 344
    const v2, 0x7f0c0393

    .line 342
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 345
    new-instance v2, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v2, p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)V

    const v3, 0x104000a

    .line 342
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 354
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 342
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 356
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 341
    return-void
.end method

.method private sipperCanBePruned(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 501
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePerformanceSummary()V
    .locals 9

    .prologue
    .line 475
    iget-object v5, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerf:Lcyanogenmod/power/PerformanceManager;

    invoke-virtual {v5}, Lcyanogenmod/power/PerformanceManager;->getPowerProfile()I

    move-result v4

    .line 476
    .local v4, "value":I
    const-string/jumbo v3, ""

    .line 477
    .local v3, "summary":Ljava/lang/String;
    iget-object v5, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    array-length v0, v5

    .line 478
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 480
    :try_start_0
    iget-object v5, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 481
    iget-object v5, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileEntries:[Ljava/lang/String;

    aget-object v3, v5, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_1
    iget-object v5, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    const-string/jumbo v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 474
    return-void

    .line 483
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_1
.end method

.method private updatePerformanceValue()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 492
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerf:Lcyanogenmod/power/PerformanceManager;

    invoke-virtual {v1}, Lcyanogenmod/power/PerformanceManager;->getPowerProfile()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerAppProfiles:Landroid/preference/SwitchPreference;

    .line 496
    iget-object v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerf:Lcyanogenmod/power/PerformanceManager;

    iget-object v2, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerf:Lcyanogenmod/power/PerformanceManager;

    invoke-virtual {v2}, Lcyanogenmod/power/PerformanceManager;->getPowerProfile()I

    move-result v2

    invoke-virtual {v1, v2}, Lcyanogenmod/power/PerformanceManager;->getProfileHasAppProfiles(I)Z

    move-result v1

    .line 495
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 497
    invoke-direct {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePerformanceSummary()V

    .line 490
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 182
    const/16 v0, 0x36

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    .line 136
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcyanogenmod/power/PerformanceManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/power/PerformanceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerf:Lcyanogenmod/power/PerformanceManager;

    .line 138
    const v4, 0x7f08003d

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 139
    const-string/jumbo v4, "battery_history"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

    iput-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

    .line 140
    const-string/jumbo v4, "app_list"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 141
    const-string/jumbo v4, "low_power"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    .line 143
    iget-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerf:Lcyanogenmod/power/PerformanceManager;

    invoke-virtual {v4}, Lcyanogenmod/power/PerformanceManager;->getNumberOfProfiles()I

    move-result v4

    iput v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mNumPerfProfiles:I

    .line 144
    const-string/jumbo v4, "pref_perf_profile"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    .line 145
    const-string/jumbo v4, "app_perf_profiles_enabled"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerAppProfiles:Landroid/preference/SwitchPreference;

    .line 146
    iget v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mNumPerfProfiles:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 147
    const-string/jumbo v4, "pref_perf_profile"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v4, "app_perf_profiles_enabled"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)V

    .line 149
    iput-object v6, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    .line 150
    iput-object v6, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerAppProfiles:Landroid/preference/SwitchPreference;

    .line 177
    :goto_0
    new-instance v4, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;-><init>(Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    .line 132
    return-void

    .line 153
    :cond_0
    const-string/jumbo v4, "low_power"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)V

    .line 154
    iput-object v6, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    .line 155
    iget-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 156
    iget v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mNumPerfProfiles:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileEntries:[Ljava/lang/String;

    .line 157
    iget v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mNumPerfProfiles:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 161
    const/high16 v5, 0x3f050000    # 0.51953125f

    .line 160
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "entries":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 163
    const v5, 0x3f050001

    .line 162
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 164
    .local v3, "values":[I
    const/4 v1, 0x0

    .line 165
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 166
    aget v4, v3, v2

    iget v5, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mNumPerfProfiles:I

    if-ge v4, v5, :cond_1

    .line 167
    iget-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileEntries:[Ljava/lang/String;

    aget-object v5, v0, v2

    aput-object v5, v4, v1

    .line 168
    iget-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    aget v5, v3, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 165
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    :cond_2
    iget-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileEntries:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 173
    iget-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 174
    invoke-direct {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePerformanceValue()V

    .line 175
    iget-object v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 257
    const/4 v2, 0x3

    const v3, 0x7f0c0392

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 258
    const v3, 0x7f02003b

    .line 257
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 259
    const/16 v3, 0x64

    .line 257
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    .line 260
    .local v1, "reset":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 263
    const/4 v2, 0x4

    const v3, 0x7f0c0a80

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 264
    .local v0, "batterySaver":Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 266
    const v2, 0x7f0c0e4e

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 267
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 250
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 217
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 215
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/SettingsActivity;

    .line 273
    .local v0, "sa":Lcom/cyanogenmod/settings/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 331
    :pswitch_0
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 275
    :pswitch_1
    iget v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    .line 276
    const/4 v1, 0x2

    iput v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 281
    const/4 v1, 0x1

    return v1

    .line 278
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_0

    .line 283
    :pswitch_2
    invoke-direct {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->resetStats()V

    .line 284
    const/4 v1, 0x1

    return v1

    .line 286
    :pswitch_3
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 288
    .local v10, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 289
    const-string/jumbo v3, "low_power_trigger_level"

    const/4 v4, 0x0

    .line 288
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 291
    .local v13, "value":I
    const/4 v11, -0x1

    .line 292
    .local v11, "selectedIndex":I
    const v1, 0x7f0a0068

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 293
    .local v9, "intVals":[I
    array-length v1, v9

    new-array v12, v1, [Ljava/lang/String;

    .line 294
    .local v12, "strVals":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v1, v9

    if-ge v8, v1, :cond_3

    .line 295
    aget v1, v9, v8

    if-ne v1, v13, :cond_1

    .line 296
    move v11, v8

    .line 298
    :cond_1
    aget v1, v9, v8

    if-lez v1, :cond_2

    aget v1, v9, v8

    const/16 v3, 0x64

    if-ge v1, v3, :cond_2

    .line 299
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 300
    aget v3, v9, v8

    invoke-static {v3}, Lcom/cyanogenmod/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 299
    const v3, 0x7f0c0a83

    invoke-virtual {v10, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v8

    .line 294
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 303
    :cond_2
    const v1, 0x7f0c0a82

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    aput-object v1, v12, v8

    goto :goto_2

    .line 307
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    const v3, 0x7f0c0a81

    .line 307
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 311
    new-instance v3, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v3, p0, v9}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;[I)V

    .line 307
    invoke-virtual {v1, v12, v11, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 319
    const v3, 0x7f0c04c2

    const/4 v4, 0x0

    .line 307
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 320
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 322
    const/4 v1, 0x1

    return v1

    .line 324
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "i":I
    .end local v9    # "intVals":[I
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "selectedIndex":I
    .end local v12    # "strVals":[Ljava/lang/String;
    .end local v13    # "value":I
    :pswitch_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "classname"

    .line 326
    const-class v3, Lcom/cyanogenmod/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-class v1, Lcom/cyanogenmod/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 328
    const v3, 0x7f0c0e4e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 327
    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 329
    const/4 v1, 0x1

    return v1

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 204
    invoke-static {}, Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 205
    iget-object v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    invoke-super {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;->onPause()V

    .line 208
    iget-object v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 203
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 236
    if-eqz p2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 238
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 239
    .local v1, "value":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerf:Lcyanogenmod/power/PerformanceManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcyanogenmod/power/PerformanceManager;->setPowerProfile(I)Z

    move-result v0

    .line 240
    .local v0, "powerProfileUpdated":Z
    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePerformanceSummary()V

    .line 243
    :cond_0
    return v0

    .line 246
    .end local v0    # "powerProfileUpdated":Z
    .end local v1    # "value":Ljava/lang/Integer;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 224
    instance-of v2, p2, Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;

    if-nez v2, :cond_0

    .line 225
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_0
    move-object v1, p2

    .line 227
    check-cast v1, Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;

    .line 228
    .local v1, "pgp":Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v1}, Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;

    move-result-object v0

    .line 229
    .local v0, "entry":Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/settings/SettingsActivity;

    iget-object v3, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 230
    iget v4, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    const/4 v5, 0x1

    .line 229
    invoke-static {v2, v3, v4, v0, v5}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/cyanogenmod/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/cyanogenmod/settings/fuelgauge/BatteryEntry;Z)V

    .line 231
    invoke-super {p0, p1, p2}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 187
    invoke-super {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;->onResume()V

    .line 188
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 190
    iget-object v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->refreshBatterySaverOptions()V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePerformanceValue()V

    .line 196
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "performance_profile"

    .line 197
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 198
    iget-object v2, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    const/4 v3, 0x0

    .line 197
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method

.method protected refreshStats()V
    .locals 34

    .prologue
    .line 505
    invoke-super/range {p0 .. p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePreference(Lcom/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 510
    const/4 v4, 0x0

    .line 512
    .local v4, "addedSome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v18

    .line 513
    .local v18, "powerProfile":Lcom/android/internal/os/PowerProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v21

    .line 514
    .local v21, "stats":Landroid/os/BatteryStats;
    const-string/jumbo v27, "screen.full"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 516
    .local v6, "averagePower":D
    new-instance v26, Landroid/util/TypedValue;

    invoke-direct/range {v26 .. v26}, Landroid/util/TypedValue;-><init>()V

    .line 517
    .local v26, "value":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v27

    const v28, 0x1010429

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 520
    .local v8, "colorControl":I
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpl-double v27, v6, v28

    if-gez v27, :cond_2

    .line 595
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 596
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 599
    :cond_1
    invoke-static {}, Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 504
    return-void

    .line 522
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v27

    .line 521
    invoke-static/range {v27 .. v27}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v24

    .line 525
    .local v24, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v10

    .line 526
    .local v10, "dischargeAmount":I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v13

    .line 527
    .local v13, "numSippers":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v13, :cond_0

    .line 528
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatterySipper;

    .line 529
    .local v20, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v22

    .line 531
    .local v22, "totalPower":D
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    div-double v28, v28, v22

    int-to-double v0, v10

    move-wide/from16 v30, v0

    mul-double v16, v28, v30

    .line 532
    .local v16, "percentOfTotal":D
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->sipperCanBePruned(Lcom/android/internal/os/BatterySipper;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 533
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    const-wide v30, 0x40ac200000000000L    # 3600.0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    cmpg-double v27, v28, v30

    if-gez v27, :cond_5

    .line 527
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 525
    .end local v10    # "dischargeAmount":I
    .end local v12    # "i":I
    .end local v13    # "numSippers":I
    .end local v16    # "percentOfTotal":D
    .end local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v22    # "totalPower":D
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "dischargeAmount":I
    goto :goto_1

    .line 536
    .restart local v12    # "i":I
    .restart local v13    # "numSippers":I
    .restart local v16    # "percentOfTotal":D
    .restart local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    .restart local v22    # "totalPower":D
    :cond_5
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v28, v28, v16

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    .line 540
    :cond_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 543
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v30

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    div-double v30, v30, v32

    cmpg-double v27, v28, v30

    if-ltz v27, :cond_3

    .line 546
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpg-double v27, v16, v28

    if-ltz v27, :cond_3

    .line 549
    const-string/jumbo v27, "user"

    sget-object v28, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    const-string/jumbo v27, "userdebug"

    sget-object v28, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 553
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 556
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v30

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    cmpg-double v27, v28, v30

    if-ltz v27, :cond_3

    .line 559
    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    cmpg-double v27, v16, v28

    if-ltz v27, :cond_3

    .line 562
    const-string/jumbo v27, "user"

    sget-object v28, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    const-string/jumbo v27, "userdebug"

    sget-object v28, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 566
    :cond_8
    new-instance v25, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 567
    .local v25, "userHandle":Landroid/os/UserHandle;
    new-instance v11, Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v20

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 568
    .local v11, "entry":Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 570
    .local v5, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 572
    .local v9, "contentDescription":Ljava/lang/CharSequence;
    new-instance v19, Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5, v9, v11}, Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;)V

    .line 575
    .local v19, "pref":Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    mul-double v28, v28, v30

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v30

    .line 575
    div-double v14, v28, v30

    .line 577
    .local v14, "percentOfMax":D
    move-wide/from16 v0, v16

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 578
    invoke-virtual {v11}, Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 579
    add-int/lit8 v27, v12, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 580
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 581
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    .line 582
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 584
    :cond_9
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_a

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v27

    if-nez v27, :cond_b

    .line 585
    :cond_a
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_b

    .line 586
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->setTint(I)V

    .line 588
    :cond_b
    const/4 v4, 0x1

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v27

    const/16 v28, 0xb

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_3

    goto/16 :goto_0
.end method
