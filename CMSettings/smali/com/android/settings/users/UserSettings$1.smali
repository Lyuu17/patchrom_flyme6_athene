.class Lcom/cyanogenmod/settings/users/UserSettings$1;
.super Landroid/os/Handler;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/users/UserSettings;
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
    .line 149
    iput-object p1, p0, Lcom/cyanogenmod/settings/users/UserSettings$1;->this$0:Lcom/cyanogenmod/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/users/UserSettings$1;->this$0:Lcom/cyanogenmod/settings/users/UserSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/users/UserSettings;->-wrap12(Lcom/cyanogenmod/settings/users/UserSettings;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/users/UserSettings$1;->this$0:Lcom/cyanogenmod/settings/users/UserSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/users/UserSettings;->-wrap9(Lcom/cyanogenmod/settings/users/UserSettings;I)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/users/UserSettings$1;->this$0:Lcom/cyanogenmod/settings/users/UserSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/settings/users/UserSettings;->-wrap8(Lcom/cyanogenmod/settings/users/UserSettings;IZ)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
