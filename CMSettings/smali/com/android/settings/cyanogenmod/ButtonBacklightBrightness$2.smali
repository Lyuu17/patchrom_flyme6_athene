.class Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$2;
.super Ljava/lang/Object;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->showDialog(Landroid/os/Bundle;)V
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
    .line 143
    iput-object p1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x5

    .line 146
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-get3(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 147
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-wrap0(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;I)V

    .line 148
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-get0(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-get0(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->reset()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-get1(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-get1(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->reset()V

    .line 145
    :cond_1
    return-void
.end method
