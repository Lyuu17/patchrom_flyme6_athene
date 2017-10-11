.class Lcom/cyanogenmod/settings/deviceinfo/UsbModeChooserActivity$2;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/deviceinfo/UsbModeChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/deviceinfo/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/deviceinfo/UsbModeChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cyanogenmod/settings/deviceinfo/UsbModeChooserActivity$2;->this$0:Lcom/cyanogenmod/settings/deviceinfo/UsbModeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cyanogenmod/settings/deviceinfo/UsbModeChooserActivity$2;->this$0:Lcom/cyanogenmod/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 82
    return-void
.end method
