.class Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$1;
.super Ljava/lang/Object;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$1;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    return-void
.end method
