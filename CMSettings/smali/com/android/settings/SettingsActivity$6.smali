.class Lcom/cyanogenmod/settings/SettingsActivity$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/SettingsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/SettingsActivity;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/cyanogenmod/settings/SettingsActivity$6;->this$0:Lcom/cyanogenmod/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 851
    iget-object v0, p0, Lcom/cyanogenmod/settings/SettingsActivity$6;->this$0:Lcom/cyanogenmod/settings/SettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/SettingsActivity;->-wrap1(Lcom/cyanogenmod/settings/SettingsActivity;Z)V

    .line 850
    return-void
.end method
