.class Lcom/cyanogenmod/settings/ButtonSettings$1;
.super Ljava/lang/Object;
.source "ButtonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/ButtonSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/ButtonSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/ButtonSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/ButtonSettings;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/cyanogenmod/settings/ButtonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/cyanogenmod/settings/ButtonSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/ButtonSettings;->-get0(Lcom/cyanogenmod/settings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 712
    iget-object v0, p0, Lcom/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/cyanogenmod/settings/ButtonSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/ButtonSettings;->-get1(Lcom/cyanogenmod/settings/ButtonSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/cyanogenmod/settings/ButtonSettings;

    invoke-static {v1}, Lcom/cyanogenmod/settings/ButtonSettings;->-get0(Lcom/cyanogenmod/settings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 713
    iget-object v0, p0, Lcom/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/cyanogenmod/settings/ButtonSettings;

    iget-object v1, p0, Lcom/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/cyanogenmod/settings/ButtonSettings;

    invoke-static {v1}, Lcom/cyanogenmod/settings/ButtonSettings;->-get0(Lcom/cyanogenmod/settings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/ButtonSettings;->-wrap0(Lcom/cyanogenmod/settings/ButtonSettings;Z)V

    .line 710
    return-void
.end method
