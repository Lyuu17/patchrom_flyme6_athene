.class Lcom/cyanogenmod/settings/RadioInfo$9;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/RadioInfo;

    .prologue
    .line 945
    iput-object p1, p0, Lcom/cyanogenmod/settings/RadioInfo$9;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 948
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$9;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-get10(Lcom/cyanogenmod/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$9;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-wrap3(Lcom/cyanogenmod/settings/RadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 946
    return-void

    .line 948
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
