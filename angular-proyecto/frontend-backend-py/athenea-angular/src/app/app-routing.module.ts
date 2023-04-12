import { NgModule, Component } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { Ec2Component } from './components/ec2/ec2.component';
import { HomeComponent } from './home/home.component';

const routes: Routes = [
  {
    path:'',
    component:HomeComponent
  },
   {
     path:'home',
     component:Ec2Component
   }
 ];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
