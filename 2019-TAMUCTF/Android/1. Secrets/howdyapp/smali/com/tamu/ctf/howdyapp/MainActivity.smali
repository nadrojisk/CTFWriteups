.class public Lcom/tamu/ctf/howdyapp/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v2, 0x7f09001a

    invoke-virtual {p0, v2}, Lcom/tamu/ctf/howdyapp/MainActivity;->setContentView(I)V

    .line 16
    const v2, 0x7f07001e

    invoke-virtual {p0, v2}, Lcom/tamu/ctf/howdyapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 17
    .local v1, "buttonCount":Landroid/widget/TextView;
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/tamu/ctf/howdyapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 18
    .local v0, "button":Landroid/widget/ImageButton;
    new-instance v2, Lcom/tamu/ctf/howdyapp/MainActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/tamu/ctf/howdyapp/MainActivity$1;-><init>(Lcom/tamu/ctf/howdyapp/MainActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method
