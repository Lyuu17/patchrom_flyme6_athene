.class Lcom/cyanogenmod/settings/ProxySelector$3;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/ProxySelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/ProxySelector;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/cyanogenmod/settings/ProxySelector$3;->this$0:Lcom/cyanogenmod/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cyanogenmod/settings/ProxySelector$3;->this$0:Lcom/cyanogenmod/settings/ProxySelector;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/ProxySelector;->populateFields()V

    .line 260
    return-void
.end method
