.class Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/TrustedCredentialsSettings;

.field final synthetic val$certDialog:Landroid/app/Dialog;

.field final synthetic val$certHolder:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/TrustedCredentialsSettings;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/TrustedCredentialsSettings;
    .param p2, "val$certHolder"    # Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;
    .param p3, "val$certDialog"    # Landroid/app/Dialog;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;->this$0:Lcom/cyanogenmod/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;

    iput-object p3, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;->val$certDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 689
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;->this$0:Lcom/cyanogenmod/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v2}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;->-get5(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;)Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v2, v3}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;->-wrap1(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 692
    new-instance v2, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5$1;

    iget-object v3, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;

    iget-object v4, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;->val$certDialog:Landroid/app/Dialog;

    invoke-direct {v2, p0, v3, v4}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5$1;-><init>(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V

    const v3, 0x1040013

    .line 691
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 700
    new-instance v2, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5$2;

    invoke-direct {v2, p0}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5$2;-><init>(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$5;)V

    const v3, 0x1040009

    .line 699
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 705
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 706
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 688
    return-void
.end method
