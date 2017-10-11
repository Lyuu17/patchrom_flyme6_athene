.class Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$6;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/cyanogenmod/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$6;->this$0:Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings$6;->this$0:Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;->-wrap0(Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "zen_priority_vibration_mode"

    .line 160
    invoke-static {v0, v1, p1}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    const/4 v0, 0x1

    return v0
.end method
