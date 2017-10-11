.class Lcom/cyanogenmod/settings/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/SettingsActivity;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/cyanogenmod/settings/SettingsActivity$5;->this$0:Lcom/cyanogenmod/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity$5;->this$0:Lcom/cyanogenmod/settings/SettingsActivity;

    iget-object v1, p0, Lcom/cyanogenmod/settings/SettingsActivity$5;->this$0:Lcom/cyanogenmod/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/cyanogenmod/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 704
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity$5;->this$0:Lcom/cyanogenmod/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/SettingsActivity;->finish()V

    .line 702
    return-void
.end method
