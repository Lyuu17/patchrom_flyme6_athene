.class Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$2;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 856
    iput-object p1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$2;->this$1:Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 859
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$2;->this$1:Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->update()V

    .line 858
    return-void
.end method
