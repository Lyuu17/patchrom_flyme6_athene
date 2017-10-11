.class Lcom/cyanogenmod/settings/CmRadioInfo$5;
.super Ljava/lang/Object;
.source "CmRadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/CmRadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/CmRadioInfo;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/CmRadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/CmRadioInfo;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/cyanogenmod/settings/CmRadioInfo$5;->this$0:Lcom/cyanogenmod/settings/CmRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    const-string/jumbo v1, "persist.radio.adb_log_on"

    iget-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo$5;->this$0:Lcom/cyanogenmod/settings/CmRadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->-wrap0(Lcom/cyanogenmod/settings/CmRadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo$5;->this$0:Lcom/cyanogenmod/settings/CmRadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->-wrap6(Lcom/cyanogenmod/settings/CmRadioInfo;)V

    .line 176
    return-void

    .line 177
    :cond_0
    const-string/jumbo v0, "1"

    goto :goto_0
.end method
