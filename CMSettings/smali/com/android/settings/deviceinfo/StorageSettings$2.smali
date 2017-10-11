.class final Lcom/cyanogenmod/settings/deviceinfo/StorageSettings$2;
.super Lcom/cyanogenmod/settings/search/BaseSearchIndexProvider;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/cyanogenmod/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v7, 0x7f0c0736

    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/search/SearchIndexableRaw;>;"
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 445
    .local v0, "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 446
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 447
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 450
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const v6, 0x7f0c08c7

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 451
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 452
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 455
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 456
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 457
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 458
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-static {v3}, Lcom/cyanogenmod/settings/deviceinfo/StorageSettings;->-wrap0(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 460
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 461
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 466
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const v6, 0x7f0c0753

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 467
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 468
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 471
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const v6, 0x7f0c0751

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 472
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 473
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 476
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const v6, 0x7f0c0755

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 477
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 478
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 481
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const v6, 0x7f0c0758

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 482
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 483
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 486
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const v6, 0x7f0c0759

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 487
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 488
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 491
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const v6, 0x7f0c0757

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 492
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 493
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 496
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const v6, 0x7f0c075b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 497
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 498
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 501
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const v6, 0x7f0c075a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 502
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 503
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    return-object v1
.end method
