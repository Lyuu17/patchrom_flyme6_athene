.class Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference$2;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;->-get0(Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;)Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;

    invoke-interface {v0, v1}, Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;)V

    .line 238
    iget-object v0, p0, Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;->-wrap0(Lcom/cyanogenmod/settings/inputmethod/InputMethodPreference;)V

    .line 234
    return-void
.end method
