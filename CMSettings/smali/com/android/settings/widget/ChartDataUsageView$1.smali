.class Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/cyanogenmod/settings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/cyanogenmod/settings/widget/ChartSweepView;Z)V
    .locals 2
    .param p1, "sweep"    # Lcom/cyanogenmod/settings/widget/ChartSweepView;
    .param p2, "sweepDone"    # Z

    .prologue
    .line 300
    if-eqz p2, :cond_2

    .line 301
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0, p1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-wrap1(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 302
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-wrap4(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)V

    .line 304
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get2(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get0(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get0(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get1(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get0(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get0(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-wrap2(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;Lcom/cyanogenmod/settings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V
    .locals 1
    .param p1, "sweep"    # Lcom/cyanogenmod/settings/widget/ChartSweepView;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get2(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get0(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get0(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get1(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get0(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-get0(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
