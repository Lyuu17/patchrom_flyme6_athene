.class Lcom/cyanogenmod/settings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DataUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$12;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/cyanogenmod/settings/DataUsageSummary$12;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$12;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/cyanogenmod/settings/DataUsageSummary;->-get5(Lcom/cyanogenmod/settings/DataUsageSummary;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/cyanogenmod/settings/DataUsageSummary;->-wrap8(Lcom/cyanogenmod/settings/DataUsageSummary;J)V

    .line 1770
    iget-object v0, p0, Lcom/cyanogenmod/settings/DataUsageSummary$12;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/cyanogenmod/settings/DataUsageSummary;->-wrap11(Lcom/cyanogenmod/settings/DataUsageSummary;)V

    .line 1768
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/cyanogenmod/settings/DataUsageSummary$12;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$12;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/cyanogenmod/settings/DataUsageSummary;->-get5(Lcom/cyanogenmod/settings/DataUsageSummary;)Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/cyanogenmod/settings/DataUsageSummary;->-wrap9(Lcom/cyanogenmod/settings/DataUsageSummary;J)V

    .line 1763
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/cyanogenmod/settings/DataUsageSummary$12;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;->show(Lcom/cyanogenmod/settings/DataUsageSummary;)V

    .line 1779
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/cyanogenmod/settings/DataUsageSummary$12;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/cyanogenmod/settings/DataUsageSummary$WarningEditorFragment;->show(Lcom/cyanogenmod/settings/DataUsageSummary;)V

    .line 1774
    return-void
.end method
