.class Lcom/cyanogenmod/settings/profiles/NFCProfileSelect$1;
.super Ljava/lang/Object;
.source "NFCProfileSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/profiles/NFCProfileSelect;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/profiles/NFCProfileSelect;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/profiles/NFCProfileSelect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/profiles/NFCProfileSelect;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cyanogenmod/settings/profiles/NFCProfileSelect$1;->this$0:Lcom/cyanogenmod/settings/profiles/NFCProfileSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cyanogenmod/settings/profiles/NFCProfileSelect$1;->this$0:Lcom/cyanogenmod/settings/profiles/NFCProfileSelect;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/profiles/NFCProfileSelect;->showProfileSelectionDialog()V

    .line 63
    return-void
.end method
