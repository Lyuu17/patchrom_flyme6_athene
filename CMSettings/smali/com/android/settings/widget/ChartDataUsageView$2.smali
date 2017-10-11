.class Lcom/cyanogenmod/settings/widget/ChartDataUsageView$2;
.super Landroid/os/Handler;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 95
    iput-object p1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$2;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/cyanogenmod/settings/widget/ChartSweepView;

    .line 99
    .local v0, "sweep":Lcom/cyanogenmod/settings/widget/ChartSweepView;
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$2;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v1, v0}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-wrap5(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 100
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$2;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-static {v1}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-wrap4(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;)V

    .line 103
    iget-object v1, p0, Lcom/cyanogenmod/settings/widget/ChartDataUsageView$2;->this$0:Lcom/cyanogenmod/settings/widget/ChartDataUsageView;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/cyanogenmod/settings/widget/ChartDataUsageView;->-wrap2(Lcom/cyanogenmod/settings/widget/ChartDataUsageView;Lcom/cyanogenmod/settings/widget/ChartSweepView;Z)V

    .line 97
    return-void
.end method
