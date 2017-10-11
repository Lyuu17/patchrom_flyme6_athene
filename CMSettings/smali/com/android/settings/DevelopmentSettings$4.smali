.class Lcom/cyanogenmod/settings/DevelopmentSettings$4;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/DevelopmentSettings;->confirmEnableMultiWindowMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DevelopmentSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/DevelopmentSettings;

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings$4;->this$0:Lcom/cyanogenmod/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1838
    iget-object v1, p0, Lcom/cyanogenmod/settings/DevelopmentSettings$4;->this$0:Lcom/cyanogenmod/settings/DevelopmentSettings;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->-wrap2(Lcom/cyanogenmod/settings/DevelopmentSettings;Z)V

    .line 1839
    iget-object v0, p0, Lcom/cyanogenmod/settings/DevelopmentSettings$4;->this$0:Lcom/cyanogenmod/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/DevelopmentSettings;->-wrap3(Lcom/cyanogenmod/settings/DevelopmentSettings;)V

    .line 1837
    return-void

    .line 1838
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
