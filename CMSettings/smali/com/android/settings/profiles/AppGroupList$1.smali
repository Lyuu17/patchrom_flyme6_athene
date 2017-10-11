.class Lcom/cyanogenmod/settings/profiles/AppGroupList$1;
.super Ljava/lang/Object;
.source "AppGroupList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/profiles/AppGroupList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/profiles/AppGroupList;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/profiles/AppGroupList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/profiles/AppGroupList;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cyanogenmod/settings/profiles/AppGroupList$1;->this$0:Lcom/cyanogenmod/settings/profiles/AppGroupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cyanogenmod/settings/profiles/AppGroupList$1;->this$0:Lcom/cyanogenmod/settings/profiles/AppGroupList;

    invoke-static {v0}, Lcom/cyanogenmod/settings/profiles/AppGroupList;->-wrap0(Lcom/cyanogenmod/settings/profiles/AppGroupList;)V

    .line 92
    return-void
.end method
