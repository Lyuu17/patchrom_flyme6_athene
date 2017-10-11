.class public Lcom/cyanogenmod/settings/widget/ChartDataUsageView;
.super Lcom/cyanogenmod/settings/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;,
        Lcom/cyanogenmod/settings/widget/ChartDataUsageView$TimeAxis;,
        Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataAxis;,
        Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;
    }
.end annotation


# instance fields
.field private mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/cyanogenmod/settings/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mInspectEnd:J

.field private mInspectStart:J

.field private mListener:Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

.field private mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

.field private mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

.field private mVertListener:Lcom/cyanogenmod/settings/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method static synthetic -get0(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mListener:Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartSweepView;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartSweepView;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic -wrap0(J)J
    .locals 2
    .param p0, "i"    # J

    .prologue
    invoke-static {p0, p1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;Lcom/cyanogenmod/settings/widget/ChartSweepView;)V
    .locals 0
    .param p1, "sweep"    # Lcom/cyanogenmod/settings/widget/ChartSweepView;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;Lcom/cyanogenmod/settings/widget/ChartSweepView;Z)V
    .locals 0
    .param p1, "sweep"    # Lcom/cyanogenmod/settings/widget/ChartSweepView;
    .param p2, "force"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/cyanogenmod/settings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "bootstrap"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;Lcom/cyanogenmod/settings/widget/ChartSweepView;)V
    .locals 0
    .param p1, "activeSweep"    # Lcom/cyanogenmod/settings/widget/ChartSweepView;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/cyanogenmod/settings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 297
    new-instance v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;-><init>(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVertListener:Lcom/cyanogenmod/settings/widget/ChartSweepView$OnSweepListener;

    .line 93
    new-instance v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/cyanogenmod/settings/widget/InvertedChartAxis;

    new-instance v2, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/cyanogenmod/settings/widget/InvertedChartAxis;-><init>(Lcom/cyanogenmod/settings/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->init(Lcom/cyanogenmod/settings/widget/ChartAxis;Lcom/cyanogenmod/settings/widget/ChartAxis;)V

    .line 95
    new-instance v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$2;-><init>(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method private clearUpdateAxisDelayed(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V
    .locals 2
    .param p1, "sweep"    # Lcom/cyanogenmod/settings/widget/ChartSweepView;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 293
    return-void
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4
    .param p0, "i"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 595
    sub-long/2addr p0, v2

    .line 598
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 599
    const/4 v0, 0x2

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 600
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 601
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 602
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 603
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 605
    add-long/2addr p0, v2

    .line 607
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .end local p0    # "i":J
    :goto_0
    return-wide p0

    .restart local p0    # "i":J
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/cyanogenmod/settings/widget/ChartSweepView;Z)V
    .locals 4
    .param p1, "sweep"    # Lcom/cyanogenmod/settings/widget/ChartSweepView;
    .param p2, "force"    # Z

    .prologue
    const/16 v2, 0x64

    .line 287
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 289
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    .line 288
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "bootstrap"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 583
    .local v1, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 584
    .local v0, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 585
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 586
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 587
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 589
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 581
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 10

    .prologue
    .line 268
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v4

    .line 271
    .local v4, "maxEstimate":J
    const-wide v2, 0x7fffffffffffffffL

    .line 272
    .local v2, "interestLine":J
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 278
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 279
    const-wide v2, 0x7fffffffffffffffL

    .line 282
    :cond_1
    const-wide/16 v6, 0x7

    mul-long/2addr v6, v2

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    .line 283
    .local v0, "estimateVisible":Z
    :goto_1
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 267
    return-void

    .line 274
    .end local v0    # "estimateVisible":Z
    :cond_2
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    .line 282
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "estimateVisible":Z
    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    .line 383
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V
    .locals 24
    .param p1, "activeSweep"    # Lcom/cyanogenmod/settings/widget/ChartSweepView;

    .prologue
    .line 208
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVertMax:J

    .line 210
    .local v8, "max":J
    const-wide/16 v18, 0x0

    .line 211
    .local v18, "newMax":J
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v6

    .line 213
    .local v6, "adjustAxis":I
    if-lez v6, :cond_5

    .line 215
    const-wide/16 v20, 0xb

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    .line 225
    .end local v6    # "adjustAxis":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 226
    .local v14, "maxSweep":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 227
    .local v12, "maxSeries":J
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0xc

    mul-long v20, v20, v22

    const-wide/16 v22, 0xa

    div-long v16, v20, v22

    .line 228
    .local v16, "maxVisible":J
    const-wide/32 v20, 0x1400000

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 229
    .local v10, "maxDefault":J
    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 232
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_4

    .line 233
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVertMax:J

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVert:Lcom/cyanogenmod/settings/widget/ChartAxis;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cyanogenmod/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v7

    .line 236
    .local v7, "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 239
    if-eqz v7, :cond_1

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 244
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mGrid:Lcom/cyanogenmod/settings/widget/ChartGridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cyanogenmod/settings/widget/ChartGridView;->invalidate()V

    .line 247
    if-eqz p1, :cond_2

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->updateValueFromPosition()V

    .line 254
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->layoutSweep(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 257
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->layoutSweep(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 207
    .end local v7    # "changed":Z
    :cond_4
    return-void

    .line 216
    .end local v10    # "maxDefault":J
    .end local v12    # "maxSeries":J
    .end local v14    # "maxSweep":J
    .end local v16    # "maxVisible":J
    .restart local v6    # "adjustAxis":I
    :cond_5
    if-gez v6, :cond_6

    .line 218
    const-wide/16 v20, 0x9

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    goto/16 :goto_0

    .line 220
    :cond_6
    move-wide/from16 v18, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 5
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    const/4 v4, 0x0

    .line 158
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 159
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 163
    :cond_0
    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 164
    invoke-direct {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 165
    invoke-direct {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 166
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 157
    return-void

    .line 159
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 11
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    .line 172
    if-nez p1, :cond_0

    .line 173
    const-wide/16 v2, -0x1

    .line 174
    .local v2, "warningBytes":J
    const-wide/16 v0, -0x1

    .line 180
    .local v0, "limitBytes":J
    :goto_0
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v4, v8}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 182
    iget-object v4, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 183
    iget-object v4, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v4, v0, v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setValue(J)V

    .line 190
    :goto_1
    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    .line 191
    iget-object v4, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v4, v8}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 192
    iget-object v4, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v4, v2, v3}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setValue(J)V

    .line 198
    :goto_2
    invoke-direct {p0, v10}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 199
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 200
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->invalidate()V

    .line 169
    return-void

    .line 176
    .end local v0    # "limitBytes":J
    .end local v2    # "warningBytes":J
    :cond_0
    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 177
    .restart local v2    # "warningBytes":J
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    .restart local v0    # "limitBytes":J
    goto :goto_0

    .line 185
    :cond_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v4, v9}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 186
    iget-object v4, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v4, v8}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 187
    iget-object v4, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v4, v6, v7}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 194
    :cond_2
    iget-object v4, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v4, v9}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 195
    iget-object v4, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v4, v6, v7}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_2
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 150
    iput-object p1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 152
    invoke-direct {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 153
    invoke-direct {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 154
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 148
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 347
    iget-wide v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x500000

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    invoke-super {p0}, Lcom/cyanogenmod/settings/widget/ChartView;->onFinishInflate()V

    .line 112
    const v0, 0x7f13008f

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/widget/ChartGridView;

    iput-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mGrid:Lcom/cyanogenmod/settings/widget/ChartGridView;

    .line 113
    const v0, 0x7f130090

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    .line 114
    const v0, 0x7f130091

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 117
    const v0, 0x7f130093

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    .line 118
    const v0, 0x7f130092

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    .line 121
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/cyanogenmod/settings/widget/ChartSweepView;Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 122
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/cyanogenmod/settings/widget/ChartSweepView;Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 125
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/cyanogenmod/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setNeighbors([Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 126
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/cyanogenmod/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setNeighbors([Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 128
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVertListener:Lcom/cyanogenmod/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/cyanogenmod/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 129
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVertListener:Lcom/cyanogenmod/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/cyanogenmod/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 131
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setDragInterval(J)V

    .line 132
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->setDragInterval(J)V

    .line 135
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mGrid:Lcom/cyanogenmod/settings/widget/ChartGridView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHoriz:Lcom/cyanogenmod/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVert:Lcom/cyanogenmod/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/settings/widget/ChartGridView;->init(Lcom/cyanogenmod/settings/widget/ChartAxis;Lcom/cyanogenmod/settings/widget/ChartAxis;)V

    .line 136
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHoriz:Lcom/cyanogenmod/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVert:Lcom/cyanogenmod/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->init(Lcom/cyanogenmod/settings/widget/ChartAxis;Lcom/cyanogenmod/settings/widget/ChartAxis;)V

    .line 137
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHoriz:Lcom/cyanogenmod/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVert:Lcom/cyanogenmod/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->init(Lcom/cyanogenmod/settings/widget/ChartAxis;Lcom/cyanogenmod/settings/widget/ChartAxis;)V

    .line 138
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVert:Lcom/cyanogenmod/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->init(Lcom/cyanogenmod/settings/widget/ChartAxis;)V

    .line 139
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mVert:Lcom/cyanogenmod/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->init(Lcom/cyanogenmod/settings/widget/ChartAxis;)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 109
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 337
    return v2

    .line 330
    :pswitch_0
    return v1

    .line 333
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 334
    return v1

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mListener:Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 144
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 3
    .param p1, "visibleStart"    # J
    .param p3, "visibleEnd"    # J

    .prologue
    .line 364
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mHoriz:Lcom/cyanogenmod/settings/widget/ChartAxis;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/cyanogenmod/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v0

    .line 365
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mGrid:Lcom/cyanogenmod/settings/widget/ChartGridView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cyanogenmod/settings/widget/ChartGridView;->setBounds(JJ)V

    .line 366
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 367
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 369
    iput-wide p1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mInspectStart:J

    .line 370
    iput-wide p3, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mInspectEnd:J

    .line 372
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 373
    if-eqz v0, :cond_0

    .line 374
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 375
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 378
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 379
    invoke-direct {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 380
    invoke-direct {p0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 363
    return-void
.end method
