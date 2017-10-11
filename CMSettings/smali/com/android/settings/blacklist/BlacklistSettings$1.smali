.class Lcom/cyanogenmod/settings/blacklist/BlacklistSettings$1;
.super Ljava/lang/Object;
.source "BlacklistSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/blacklist/BlacklistSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/blacklist/BlacklistSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/blacklist/BlacklistSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/blacklist/BlacklistSettings;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cyanogenmod/settings/blacklist/BlacklistSettings$1;->this$0:Lcom/cyanogenmod/settings/blacklist/BlacklistSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cyanogenmod/settings/blacklist/BlacklistSettings$1;->this$0:Lcom/cyanogenmod/settings/blacklist/BlacklistSettings;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/cyanogenmod/settings/blacklist/BlacklistSettings;->-wrap0(Lcom/cyanogenmod/settings/blacklist/BlacklistSettings;J)V

    .line 103
    return-void
.end method
