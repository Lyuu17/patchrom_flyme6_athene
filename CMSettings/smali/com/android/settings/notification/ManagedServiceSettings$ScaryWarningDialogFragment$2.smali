.class Lcom/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->this$1:Lcom/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 172
    return-void
.end method
