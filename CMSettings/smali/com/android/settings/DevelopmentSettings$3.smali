.class Lcom/cyanogenmod/settings/DevelopmentSettings$3;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/DevelopmentSettings;->confirmEnableOemUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DevelopmentSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/DevelopmentSettings;

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings$3;->this$0:Lcom/cyanogenmod/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1817
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings$3;->this$0:Lcom/cyanogenmod/settings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    .line 1820
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings$3;->this$0:Lcom/cyanogenmod/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->-wrap3(Lcom/cyanogenmod/settings/DevelopmentSettings;)V

    .line 1816
    return-void
.end method
