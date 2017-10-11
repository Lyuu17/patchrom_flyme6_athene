.class Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment;

    .prologue
    .line 2480
    iput-object p1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment$1;->this$1:Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2483
    iget-object v1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment$1;->this$1:Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/DataUsageSummary;

    .line 2484
    .local v0, "target":Lcom/cyanogenmod/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2486
    sget-object v1, Lcom/cyanogenmod/settings/DataUsageSummary$ConfirmDataResetFragment;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/DataUsageSummary;->-wrap3(Lcom/cyanogenmod/settings/DataUsageSummary;Landroid/net/NetworkTemplate;)V

    .line 2482
    :cond_0
    return-void
.end method
