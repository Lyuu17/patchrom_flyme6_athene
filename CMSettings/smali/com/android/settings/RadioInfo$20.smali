.class Lcom/cyanogenmod/settings/RadioInfo$20;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/RadioInfo;->updatePingState()V
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
    .line 788
    iput-object p1, p0, Lcom/cyanogenmod/settings/RadioInfo$20;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$20;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-get6(Lcom/cyanogenmod/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/RadioInfo$20;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v1}, Lcom/cyanogenmod/settings/RadioInfo;->-get7(Lcom/cyanogenmod/settings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$20;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-get4(Lcom/cyanogenmod/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/RadioInfo$20;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v1}, Lcom/cyanogenmod/settings/RadioInfo;->-get5(Lcom/cyanogenmod/settings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/cyanogenmod/settings/RadioInfo$20;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v0}, Lcom/cyanogenmod/settings/RadioInfo;->-get1(Lcom/cyanogenmod/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/RadioInfo$20;->this$0:Lcom/cyanogenmod/settings/RadioInfo;

    invoke-static {v1}, Lcom/cyanogenmod/settings/RadioInfo;->-get2(Lcom/cyanogenmod/settings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    return-void
.end method
