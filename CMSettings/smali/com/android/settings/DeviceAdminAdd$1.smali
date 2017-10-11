.class Lcom/cyanogenmod/settings/DeviceAdminAdd$1;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DeviceAdminAdd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/DeviceAdminAdd;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/cyanogenmod/settings/DeviceAdminAdd$1;->this$0:Lcom/cyanogenmod/settings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/cyanogenmod/settings/DeviceAdminAdd$1;->this$0:Lcom/cyanogenmod/settings/DeviceAdminAdd;

    iget-object v1, p0, Lcom/cyanogenmod/settings/DeviceAdminAdd$1;->this$0:Lcom/cyanogenmod/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/cyanogenmod/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 251
    return-void
.end method
