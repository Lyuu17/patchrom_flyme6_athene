.class Lcom/cyanogenmod/settings/DataUsageSummary$7;
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
    .line 1565
    iput-object p1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$7;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1568
    iget-object v1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$7;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/cyanogenmod/settings/DataUsageSummary;->-get2(Lcom/cyanogenmod/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1569
    .local v0, "enableDataAlert":Z
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$7;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v1, v0}, Lcom/cyanogenmod/settings/DataUsageSummary;->-wrap4(Lcom/cyanogenmod/settings/DataUsageSummary;Z)V

    .line 1567
    return-void

    .line 1568
    .end local v0    # "enableDataAlert":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "enableDataAlert":Z
    goto :goto_0
.end method
