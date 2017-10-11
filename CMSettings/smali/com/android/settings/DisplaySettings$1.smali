.class Lcom/cyanogenmod/settings/DisplaySettings$1;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/DisplaySettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cyanogenmod/settings/DisplaySettings$1;->this$0:Lcom/cyanogenmod/settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cyanogenmod/settings/DisplaySettings$1;->this$0:Lcom/cyanogenmod/settings/DisplaySettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/DisplaySettings;->-wrap5(Lcom/cyanogenmod/settings/DisplaySettings;)V

    .line 148
    iget-object v0, p0, Lcom/cyanogenmod/settings/DisplaySettings$1;->this$0:Lcom/cyanogenmod/settings/DisplaySettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/DisplaySettings;->-wrap4(Lcom/cyanogenmod/settings/DisplaySettings;)V

    .line 146
    return-void
.end method
