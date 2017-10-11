.class public Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;
.super Landroid/app/Fragment;
.source "ContributorsCloudFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;,
        Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;,
        Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;,
        Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;,
        Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;
    }
.end annotation


# instance fields
.field private mContributionsInfoMenuItem:Landroid/view/MenuItem;

.field private mContributorCommits:I

.field private mContributorInfoMenuItem:Landroid/view/MenuItem;

.field private mContributorName:Ljava/lang/String;

.field private mContributorNick:Ljava/lang/String;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mFailedView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mLastUpdate:J

.field private mLoadingView:Landroid/view/View;

.field private mSearchAdapter:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchResults:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectedContributor:I

.field private mTotalCommits:I

.field private mTotalContributors:I

.field private mViewController:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;


# direct methods
.method static synthetic -get0(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)I
    .locals 1

    iget v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    return v0
.end method

.method static synthetic -get3(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mViewController:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/content/Context;I)Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectedId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->generateViewInfo(Landroid/content/Context;I)Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->loadContributorsInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->loadUserInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;)V
    .locals 0
    .param p1, "contributor"    # Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->onContributorSelected(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->onLoadCloudDataFailed()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;FF)V
    .locals 0
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->onLoadCloudDataSuccess(FF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    .line 212
    return-void
.end method

.method private animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V
    .locals 8
    .param p1, "src"    # Landroid/view/View;
    .param p2, "dst"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 413
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 415
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 416
    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 417
    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v5

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    .line 415
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 418
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    new-instance v1, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;-><init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 442
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 412
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 445
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static extractContributorsCloudDatabase(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 745
    const/16 v0, 0x400

    .line 746
    .local v0, "BUFFER":I
    const/4 v4, 0x0

    .line 747
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 748
    .local v5, "os":Ljava/io/OutputStream;
    const-string/jumbo v8, "contributors.db"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 750
    .local v2, "databasePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 751
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string/jumbo v9, "contributors.db"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 752
    .local v4, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v6, "os":Ljava/io/OutputStream;
    const/4 v7, -0x1

    .line 754
    .local v7, "read":I
    const/16 v8, 0x400

    :try_start_1
    new-array v1, v8, [B

    .line 755
    .local v1, "data":[B
    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v4, v1, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 756
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 758
    .end local v1    # "data":[B
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/io/IOException;
    move-object v5, v6

    .line 759
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "read":I
    :goto_1
    :try_start_2
    const-string/jumbo v8, "ContributorsCloud"

    const-string/jumbo v9, "Failed to extract contributors database"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 761
    if-eqz v4, :cond_0

    .line 763
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 744
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 761
    .restart local v1    # "data":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "read":I
    :cond_1
    if-eqz v4, :cond_2

    .line 763
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 764
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .restart local v3    # "ex":Ljava/io/IOException;
    goto :goto_3

    .end local v1    # "data":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "read":I
    :catch_2
    move-exception v3

    goto :goto_2

    .line 760
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 761
    :goto_4
    if-eqz v4, :cond_3

    .line 763
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 760
    :cond_3
    :goto_5
    throw v8

    .line 764
    :catch_3
    move-exception v3

    .restart local v3    # "ex":Ljava/io/IOException;
    goto :goto_5

    .line 760
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "read":I
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    goto :goto_4

    .line 758
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v7    # "read":I
    .local v5, "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v3

    .restart local v3    # "ex":Ljava/io/IOException;
    goto :goto_1
.end method

.method private generateViewInfo(Landroid/content/Context;I)Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectedId"    # I

    .prologue
    .line 450
    const/4 v4, 0x0

    .line 451
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/high16 v18, -0x40800000    # -1.0f

    .local v18, "focusX":F
    const/high16 v19, -0x40800000    # -1.0f

    .line 452
    .local v19, "focusY":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 455
    .local v29, "res":Landroid/content/res/Resources;
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    .line 456
    .local v17, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v17, :cond_0

    .line 458
    const/16 v34, 0x0

    return-object v34

    .line 462
    :cond_0
    const-string/jumbo v34, "select value from info where key = ?;"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const-string/jumbo v36, "orig_size"

    const/16 v37, 0x0

    aput-object v36, v35, v37

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 463
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v34

    if-eqz v34, :cond_1

    .line 467
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 468
    .local v26, "osize":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 471
    const-string/jumbo v34, "select id, name, x, y, r, fs from metadata;"

    const/16 v35, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 472
    if-nez v7, :cond_2

    .line 474
    const/16 v34, 0x0

    return-object v34

    .line 465
    .end local v26    # "osize":I
    :cond_1
    const/16 v34, 0x0

    return-object v34

    .line 477
    .restart local v26    # "osize":I
    :cond_2
    const v34, 0x7f0e003d

    :try_start_0
    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 478
    .local v12, "colorForeground":I
    const v34, 0x7f0e003e

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 479
    .local v13, "colorSelected":I
    new-instance v27, Landroid/graphics/Paint;

    const/16 v34, 0x5

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 482
    .local v27, "paint":Landroid/graphics/Paint;
    invoke-direct/range {p0 .. p0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->hasLargeHeap()Z

    move-result v34

    if-eqz v34, :cond_9

    const/16 v6, 0x800

    .line 483
    .local v6, "bsize":I
    :goto_0
    sget-object v34, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v34

    invoke-static {v6, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 484
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 487
    .local v8, "canvas":Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    if-eqz v34, :cond_e

    .line 488
    const-string/jumbo v34, "id"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 490
    .local v22, "id":I
    const-string/jumbo v34, "name"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 491
    .local v25, "name":Ljava/lang/String;
    const-string/jumbo v34, "x"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v32

    .line 492
    .local v32, "x":F
    const-string/jumbo v34, "y"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v33

    .line 493
    .local v33, "y":F
    const-string/jumbo v34, "r"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 494
    .local v28, "r":I
    const-string/jumbo v34, "fs"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v20

    .line 495
    .local v20, "fs":F
    if-gez v22, :cond_4

    .line 496
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v34

    sub-float v33, v33, v34

    .line 500
    :cond_4
    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move/from16 v34, v13

    :goto_2
    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 501
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 504
    const/16 v31, 0x0

    .local v31, "w":F
    const/16 v21, 0x0

    .line 505
    .local v21, "h":F
    move/from16 v0, p2

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    if-eqz v28, :cond_6

    .line 506
    :cond_5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 507
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move/from16 v2, v35

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 508
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v21, v0

    .line 510
    .end local v5    # "bounds":Landroid/graphics/Rect;
    :cond_6
    move/from16 v0, p2

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/16 v34, -0x1

    move/from16 v0, v28

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 511
    :cond_7
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v31

    .line 513
    :cond_8
    if-nez v28, :cond_b

    .line 515
    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v27

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 535
    :goto_3
    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ImageView;->getWidth()I

    move-result v24

    .line 537
    .local v24, "iw":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ImageView;->getHeight()I

    move-result v23

    .line 538
    .local v23, "ih":I
    div-int/lit8 v15, v24, 0x2

    .line 539
    .local v15, "cx":I
    div-int/lit8 v16, v23, 0x2

    .line 540
    .local v16, "cy":I
    div-int/lit8 v9, v6, 0x2

    .line 541
    .local v9, "cbx":I
    div-int/lit8 v10, v6, 0x2

    .line 542
    .local v10, "cby":I
    const/4 v14, 0x0

    .line 543
    .local v14, "cw":F
    const/4 v11, 0x0

    .line 544
    .local v11, "ch":F
    if-nez v28, :cond_d

    .line 545
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v34

    invoke-direct {v0, v1, v6, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v14, v34, v35

    .line 546
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v34

    invoke-direct {v0, v1, v6, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v11, v34, v35

    .line 552
    :goto_4
    int-to-float v0, v15

    move/from16 v34, v0

    int-to-float v0, v9

    move/from16 v35, v0

    sub-float v35, v32, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v24

    invoke-direct {v0, v1, v6, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v35

    add-float v34, v34, v35

    add-float v18, v34, v14

    .line 553
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v10

    move/from16 v35, v0

    sub-float v35, v33, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v23

    invoke-direct {v0, v1, v6, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v35

    add-float v34, v34, v35

    add-float v19, v34, v11

    goto/16 :goto_1

    .line 482
    .end local v6    # "bsize":I
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "cbx":I
    .end local v10    # "cby":I
    .end local v11    # "ch":F
    .end local v14    # "cw":F
    .end local v15    # "cx":I
    .end local v16    # "cy":I
    .end local v20    # "fs":F
    .end local v21    # "h":F
    .end local v22    # "id":I
    .end local v23    # "ih":I
    .end local v24    # "iw":I
    .end local v25    # "name":Ljava/lang/String;
    .end local v28    # "r":I
    .end local v31    # "w":F
    .end local v32    # "x":F
    .end local v33    # "y":F
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    const/16 v6, 0x400

    .restart local v6    # "bsize":I
    goto/16 :goto_0

    .local v4, "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v20    # "fs":F
    .restart local v22    # "id":I
    .restart local v25    # "name":Ljava/lang/String;
    .restart local v28    # "r":I
    .restart local v32    # "x":F
    .restart local v33    # "y":F
    :cond_a
    move/from16 v34, v12

    .line 500
    goto/16 :goto_2

    .line 517
    .restart local v21    # "h":F
    .restart local v31    # "w":F
    :cond_b
    const/16 v34, -0x1

    move/from16 v0, v28

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    .line 519
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 520
    sub-float v34, v31, v21

    move/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 521
    const/high16 v34, -0x3d4c0000    # -90.0f

    move/from16 v0, v34

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 522
    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v27

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 523
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 557
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bsize":I
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "colorForeground":I
    .end local v13    # "colorSelected":I
    .end local v20    # "fs":F
    .end local v21    # "h":F
    .end local v22    # "id":I
    .end local v25    # "name":Ljava/lang/String;
    .end local v27    # "paint":Landroid/graphics/Paint;
    .end local v28    # "r":I
    .end local v31    # "w":F
    .end local v32    # "x":F
    .end local v33    # "y":F
    :catchall_0
    move-exception v34

    .line 558
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 557
    throw v34

    .line 526
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bsize":I
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "colorForeground":I
    .restart local v13    # "colorSelected":I
    .restart local v20    # "fs":F
    .restart local v21    # "h":F
    .restart local v22    # "id":I
    .restart local v25    # "name":Ljava/lang/String;
    .restart local v27    # "paint":Landroid/graphics/Paint;
    .restart local v28    # "r":I
    .restart local v31    # "w":F
    .restart local v32    # "x":F
    .restart local v33    # "y":F
    :cond_c
    :try_start_1
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 527
    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, v21, v34

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 528
    const/high16 v34, 0x42b40000    # 90.0f

    move/from16 v0, v34

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 529
    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v27

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 530
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 548
    .restart local v9    # "cbx":I
    .restart local v10    # "cby":I
    .restart local v11    # "ch":F
    .restart local v14    # "cw":F
    .restart local v15    # "cx":I
    .restart local v16    # "cy":I
    .restart local v23    # "ih":I
    .restart local v24    # "iw":I
    :cond_d
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v34

    invoke-direct {v0, v1, v6, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v14, v34, v35

    .line 549
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v34

    invoke-direct {v0, v1, v6, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->translate(FII)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v11, v34, v35

    goto/16 :goto_4

    .line 558
    .end local v9    # "cbx":I
    .end local v10    # "cby":I
    .end local v11    # "ch":F
    .end local v14    # "cw":F
    .end local v15    # "cx":I
    .end local v16    # "cy":I
    .end local v20    # "fs":F
    .end local v21    # "h":F
    .end local v22    # "id":I
    .end local v23    # "ih":I
    .end local v24    # "iw":I
    .end local v25    # "name":Ljava/lang/String;
    .end local v28    # "r":I
    .end local v31    # "w":F
    .end local v32    # "x":F
    .end local v33    # "y":F
    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 562
    new-instance v30, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    const/16 v34, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;-><init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;)V

    .line 563
    .local v30, "viewInfo":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;
    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 564
    move/from16 v0, v18

    move-object/from16 v1, v30

    iput v0, v1, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mFocusX:F

    .line 565
    move/from16 v0, v19

    move-object/from16 v1, v30

    iput v0, v1, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mFocusY:F

    .line 566
    return-object v30
.end method

.method private declared-synchronized getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "retryCopyIfOpenFails"    # Z

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 570
    :try_start_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_3

    .line 571
    const-string/jumbo v3, "contributors.db"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 573
    .local v0, "dbPath":Ljava/io/File;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 574
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 573
    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 575
    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 576
    const-string/jumbo v3, "ContributorsCloud"

    const-string/jumbo v4, "Cannot open cloud database: contributors.db. db == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 577
    return-object v6

    .line 579
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string/jumbo v3, "ContributorsCloud"

    const-string/jumbo v4, "Cannot open cloud database: contributors.db"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    :try_start_4
    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 591
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 592
    :try_start_5
    invoke-static {p1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->extractContributorsCloudDatabase(Landroid/content/Context;)V

    .line 593
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    monitor-exit p0

    .line 598
    return-object v6

    .line 600
    .end local v0    # "dbPath":Ljava/io/File;
    .end local v1    # "ex":Landroid/database/SQLException;
    :cond_3
    :try_start_6
    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 586
    .restart local v0    # "dbPath":Ljava/io/File;
    .restart local v1    # "ex":Landroid/database/SQLException;
    :catch_1
    move-exception v2

    .local v2, "ex2":Landroid/database/SQLException;
    goto :goto_0
.end method

.method private hasLargeHeap()Z
    .locals 3

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 736
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    const/16 v2, 0x60

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadContributorsInfo(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 604
    iput v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mTotalContributors:I

    .line 605
    iput v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mTotalCommits:I

    .line 606
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLastUpdate:J

    .line 609
    invoke-direct {p0, p1, v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 610
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 612
    return-void

    .line 616
    :cond_0
    const-string/jumbo v2, "select count(*) from metadata where id > 0;"

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 617
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mTotalContributors:I

    .line 622
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 625
    const-string/jumbo v2, "select sum(commits) from metadata where id > 0;"

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mTotalCommits:I

    .line 631
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 634
    const-string/jumbo v2, "select value from info where key = ?;"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "date"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 639
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLastUpdate:J

    .line 640
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 603
    return-void

    .line 619
    :cond_1
    return-void

    .line 628
    :cond_2
    return-void

    .line 637
    :cond_3
    return-void
.end method

.method private loadUserInfo(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 645
    invoke-direct {p0, p1, v4}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 646
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    .line 648
    return-void

    .line 652
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    iget v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 653
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v3, "select m1.name, m1.username, m1.commits from metadata as m1 where m1.id = ?;"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 655
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 659
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorName:Ljava/lang/String;

    .line 660
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorNick:Ljava/lang/String;

    .line 661
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorCommits:I

    .line 643
    return-void

    .line 657
    :cond_1
    return-void
.end method

.method private onContributorSelected(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;)V
    .locals 3
    .param p1, "contributor"    # Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;

    .prologue
    const/4 v2, 0x1

    .line 728
    iget v1, p1, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;->mId:I

    iput v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    .line 729
    new-instance v0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;

    invoke-direct {v0, p0, v2, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;-><init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;ZZ)V

    .line 730
    .local v0, "task":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 731
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 727
    return-void
.end method

.method private onLoadCloudDataFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    .line 408
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mFailedView:Landroid/view/View;

    .line 406
    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V

    .line 409
    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->showMenuItems(Z)V

    .line 404
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    goto :goto_0
.end method

.method private onLoadCloudDataSuccess(FF)V
    .locals 4
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 387
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    .line 387
    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V

    .line 389
    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->showMenuItems(Z)V

    .line 392
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mViewController:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setZoomTransitionDuration(I)V

    .line 394
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mViewController:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setScale(FFFZ)V

    .line 395
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$2;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$2;-><init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)V

    .line 400
    const-wide/16 v2, 0x9c4

    .line 395
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    :cond_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    goto :goto_0
.end method

.method private performFilter(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 701
    invoke-direct {p0, p1, v7}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 702
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    .line 704
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    return-object v5

    .line 708
    :cond_0
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v5, "\\|"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    .line 710
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v5, "select id, name || case when username is null then \'\' else \' <\'||username||\'>\' end contributor from metadata where lower(filter) like lower(\'%\' || ? || \'%\') and id > 0 order by commits desc"

    .line 709
    invoke-virtual {v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 713
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 715
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    return-object v5

    .line 717
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 719
    new-instance v3, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;

    invoke-direct {v3, v8}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;-><init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;)V

    .line 720
    .local v3, "result":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;->mId:I

    .line 721
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;->mLabel:Ljava/lang/String;

    .line 722
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 724
    .end local v3    # "result":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;
    :cond_2
    return-object v4
.end method

.method private showContributorsInfo(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    .line 680
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    .line 681
    .local v4, "nf":Ljava/text/NumberFormat;
    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 682
    .local v1, "df":Ljava/text/DateFormat;
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 683
    .local v5, "tf":Ljava/text/DateFormat;
    iget v8, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mTotalContributors:I

    if-eq v8, v10, :cond_0

    .line 684
    iget v8, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mTotalContributors:I

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    .line 685
    .local v7, "totalContributors":Ljava/lang/String;
    :goto_0
    iget v8, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mTotalCommits:I

    if-eq v8, v10, :cond_1

    .line 686
    iget v8, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mTotalCommits:I

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 687
    .local v6, "totalCommits":Ljava/lang/String;
    :goto_1
    iget-wide v8, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLastUpdate:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 688
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLastUpdate:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLastUpdate:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "lastUpdate":Ljava/lang/String;
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0c0340

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 692
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 693
    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    .line 692
    const v9, 0x7f0c0341

    invoke-virtual {p0, v9, v8}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 694
    const v8, 0x104000a

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 696
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 679
    return-void

    .line 684
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "lastUpdate":Ljava/lang/String;
    .end local v6    # "totalCommits":Ljava/lang/String;
    .end local v7    # "totalContributors":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "-"

    .restart local v7    # "totalContributors":Ljava/lang/String;
    goto :goto_0

    .line 686
    :cond_1
    const-string/jumbo v6, "-"

    .restart local v6    # "totalCommits":Ljava/lang/String;
    goto :goto_1

    .line 688
    :cond_2
    const-string/jumbo v3, "-"

    .restart local v3    # "lastUpdate":Ljava/lang/String;
    goto :goto_2
.end method

.method private showMenuItems(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 378
    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorInfoMenuItem:Landroid/view/MenuItem;

    iget v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v0, p1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 379
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributionsInfoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 380
    if-nez p1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchView:Landroid/widget/SearchView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 382
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 376
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 378
    goto :goto_0
.end method

.method private showUserInfo(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 665
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    .line 666
    .local v4, "nf":Ljava/text/NumberFormat;
    iget-object v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorName:Ljava/lang/String;

    .line 667
    .local v3, "name":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorNick:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorNick:Ljava/lang/String;

    .line 668
    .local v5, "nick":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorCommits:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "commits":Ljava/lang/String;
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 671
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c033e

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 672
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 673
    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    .line 672
    const v7, 0x7f0c033f

    invoke-virtual {p0, v7, v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 674
    const v6, 0x104000a

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 676
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 664
    return-void

    .line 666
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "commits":Ljava/lang/String;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "nick":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "-"

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 667
    :cond_1
    const-string/jumbo v5, "-"

    .restart local v5    # "nick":Ljava/lang/String;
    goto :goto_1

    .line 668
    :cond_2
    const-string/jumbo v1, "-"

    .restart local v1    # "commits":Ljava/lang/String;
    goto :goto_2
.end method

.method private translate(FII)F
    .locals 2
    .param p1, "v"    # F
    .param p2, "ssize"    # I
    .param p3, "dsize"    # I

    .prologue
    .line 740
    int-to-float v0, p3

    mul-float/2addr v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 246
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 247
    const/16 v1, 0x33

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mHandler:Landroid/os/Handler;

    .line 244
    return-void
.end method

.method public onClose()Z
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->setHasOptionsMenu(Z)V

    .line 220
    if-eqz p1, :cond_0

    .line 221
    const-string/jumbo v0, "state_selected_contributor"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    .line 216
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 254
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 257
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 258
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 259
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    const v2, 0x7f140003

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 264
    const v2, 0x7f13031a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 265
    const v2, 0x7f13031b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorInfoMenuItem:Landroid/view/MenuItem;

    .line 266
    const v2, 0x7f13031c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributionsInfoMenuItem:Landroid/view/MenuItem;

    .line 267
    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchView:Landroid/widget/SearchView;

    .line 268
    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 269
    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 270
    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 272
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->showMenuItems(Z)V

    .line 253
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 303
    const v2, 0x7f04002d

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 305
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f130068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    .line 306
    const v2, 0x7f130069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mFailedView:Landroid/view/View;

    .line 307
    const v2, 0x7f130067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    .line 308
    new-instance v2, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;-><init>(Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mViewController:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    .line 309
    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mViewController:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setMaximumScale(F)V

    .line 310
    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mViewController:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setMediumScale(F)V

    .line 312
    const v2, 0x7f13006a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    .line 313
    new-instance v2, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchAdapter:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;

    .line 314
    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchAdapter:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    new-instance v3, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$1;

    invoke-direct {v3, p0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$1;-><init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 325
    new-instance v0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v4}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;-><init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;ZZ)V

    .line 326
    .local v0, "task":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;
    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 228
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/database/SQLException;
    goto :goto_0
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V

    .line 345
    iget v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorInfoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributionsInfoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 350
    :cond_1
    return v2
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V

    .line 335
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributorInfoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 336
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mContributionsInfoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 298
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 279
    :pswitch_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchView:Landroid/widget/SearchView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 280
    const/4 v1, -0x1

    iput v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    .line 283
    new-instance v0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;

    invoke-direct {v0, p0, v3, v3}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;-><init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;ZZ)V

    .line 284
    .local v0, "task":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 288
    .end local v0    # "task":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;
    :pswitch_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->showUserInfo(Landroid/content/Context;)V

    goto :goto_0

    .line 292
    :pswitch_2
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->showContributorsInfo(Landroid/content/Context;)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x7f13031a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "contributors":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->performFilter(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchAdapter:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;->clear()V

    .line 371
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchAdapter:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;->addAll(Ljava/util/Collection;)V

    .line 372
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSearchAdapter:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;->notifyDataSetChanged()V

    .line 373
    const/4 v1, 0x1

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    const-string/jumbo v0, "state_selected_contributor"

    iget v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    return-void
.end method
