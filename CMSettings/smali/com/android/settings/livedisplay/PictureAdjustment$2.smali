.class Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$2;
.super Ljava/lang/Object;
.source "PictureAdjustment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$2;->this$0:Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$2;->this$0:Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;

    invoke-static {v0}, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;->-get1(Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/HSIC;->toFloatArray()[F

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$2;->this$0:Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;

    invoke-static {v1}, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;->-get0(Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;)[F

    move-result-object v1

    const/4 v2, 0x5

    .line 124
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 126
    iget-object v0, p0, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$2;->this$0:Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;

    invoke-static {v0}, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;->-wrap1(Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;)V

    .line 127
    iget-object v0, p0, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$2;->this$0:Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;

    iget-object v1, p0, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$2;->this$0:Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;

    invoke-static {v1}, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;->-get0(Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;)[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;->-wrap0(Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment;[F)V

    .line 123
    return-void
.end method
