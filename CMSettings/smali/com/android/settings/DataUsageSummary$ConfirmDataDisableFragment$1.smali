.class Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment;

    .prologue
    .line 2441
    iput-object p1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$1:Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2444
    iget-object v1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$1:Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/DataUsageSummary;

    .line 2445
    .local v0, "target":Lcom/cyanogenmod/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2447
    sget v1, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment;->mSubId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/settings/DataUsageSummary;->-wrap7(Lcom/cyanogenmod/settings/DataUsageSummary;IZ)V

    .line 2443
    :cond_0
    return-void
.end method
