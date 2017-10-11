.class Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog$1;
.super Ljava/lang/Object;
.source "LightSettingsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 187
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    invoke-static {v2}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->-get2(Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    invoke-static {v2}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->-get1(Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    invoke-static {v3}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->-get2(Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    invoke-virtual {v3}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v3

    if-eq v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    invoke-static {v0}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->-wrap0(Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;)V

    .line 186
    return-void

    :cond_1
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
