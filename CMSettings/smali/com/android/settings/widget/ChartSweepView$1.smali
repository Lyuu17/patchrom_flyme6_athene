.class Lcom/cyanogenmod/settings/widget/ChartSweepView$1;
.super Ljava/lang/Object;
.source "ChartSweepView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/widget/ChartSweepView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/widget/ChartSweepView;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/widget/ChartSweepView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/cyanogenmod/settings/widget/ChartSweepView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cyanogenmod/settings/widget/ChartSweepView$1;->this$0:Lcom/cyanogenmod/settings/widget/ChartSweepView;

    invoke-static {v0}, Lcom/cyanogenmod/settings/widget/ChartSweepView;->-wrap0(Lcom/cyanogenmod/settings/widget/ChartSweepView;)V

    .line 153
    return-void
.end method
