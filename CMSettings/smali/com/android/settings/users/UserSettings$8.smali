.class Lcom/cyanogenmod/settings/users/UserSettings$8;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/users/UserSettings;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/cyanogenmod/settings/users/UserSettings$8;->this$0:Lcom/cyanogenmod/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/cyanogenmod/settings/users/UserSettings$8;->this$0:Lcom/cyanogenmod/settings/users/UserSettings;

    iget-object v1, p0, Lcom/cyanogenmod/settings/users/UserSettings$8;->this$0:Lcom/cyanogenmod/settings/users/UserSettings;

    invoke-static {v1}, Lcom/cyanogenmod/settings/users/UserSettings;->-get0(Lcom/cyanogenmod/settings/users/UserSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/users/UserSettings;->-wrap11(Lcom/cyanogenmod/settings/users/UserSettings;I)V

    .line 552
    return-void
.end method
