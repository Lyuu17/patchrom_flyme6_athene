.class Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;

    .prologue
    .line 2521
    iput-object p1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment$1;->this$1:Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2524
    iget-object v1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment$1;->this$1:Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/DataUsageSummary;

    .line 2525
    .local v0, "target":Lcom/cyanogenmod/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2526
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/DataUsageSummary;->setRestrictBackground(Z)V

    .line 2523
    :cond_0
    return-void
.end method
