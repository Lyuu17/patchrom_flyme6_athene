.class Lcom/cyanogenmod/settings/DreamSettings$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DreamSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/DreamSettings;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/cyanogenmod/settings/DreamSettings$2;->this$0:Lcom/cyanogenmod/settings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cyanogenmod/settings/DreamSettings$2;->this$0:Lcom/cyanogenmod/settings/DreamSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/DreamSettings;->showDialog(I)V

    .line 161
    return-void
.end method
