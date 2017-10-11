.class Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 845
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;

    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get5()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->-wrap0(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V

    .line 847
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->-wrap4(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)V

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 849
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0

    .line 850
    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0
.end method
