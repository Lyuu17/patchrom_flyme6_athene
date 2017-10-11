.class Lcom/cyanogenmod/settings/DataUsageSummary$4;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1512
    iput-object p1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$4;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1515
    iget-object v1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$4;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/cyanogenmod/settings/DataUsageSummary;->-get10(Lcom/cyanogenmod/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1516
    .local v0, "disableAtLimit":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1519
    iget-object v1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$4;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/cyanogenmod/settings/DataUsageSummary;)V

    .line 1514
    :goto_1
    return-void

    .line 1515
    .end local v0    # "disableAtLimit":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "disableAtLimit":Z
    goto :goto_0

    .line 1521
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$4;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/cyanogenmod/settings/DataUsageSummary;->-wrap8(Lcom/cyanogenmod/settings/DataUsageSummary;J)V

    goto :goto_1
.end method
