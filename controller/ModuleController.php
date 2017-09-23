<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Admin\GlobalModule as Module;
use App\Model\Admin\GlobalModuleRoute as Route;
use App\Model\Admin\GlobalSubModule;
class ModuleController extends Controller
{
    
    public function listModule($id = null , $subModule = null)
    {
       	$model  = Module::orderBy('orderBy','asc')->with('subModule')->get();
        $moduleData = [];
        $subModuleData = [];
        if(@$id != null){
            $moduleData = Module::with(['subModule'=>function($query){
                $query->with('moduleRoute');
                }])->where(['id' => $id])->first();
        }
        if(@$subModule != null){
            $subModuleData = GlobalSubModule::where('id',$subModule)->first();
        }
    	return view('admin.module.index',['listModule'=>$model,'moduleData'=>$moduleData,'subModuleData' => $subModuleData]);
    }
    public function create()
    {
        
    	return view('admin.module.create');
    }

    protected function save_module_route($request , $module_id)
    {
     foreach ($request['route'] as $key => $value) {
            $add_route = new Route();
            $add_route->module_id = $module_id;
            $add_route->route = $value;
            $add_route->route_for = $request['route_for'][$key];
            if(isset($request['route_name'][$key]))
            {
                        $add_route->route_name = $request['route_name'][$key];
            }
            $add_route->save();
        }   
    }
    public function save(Request $request , $id=null)
    {
        
        // dd($request->all());
        $mainModule = new Module();
        $mainModule->name = $request->name;
        $mainModule->route = $request->route;
        $mainModule->save();
        foreach($request->submodule as $key => $submodule){
            $globalSubModule = new GlobalSubModule;
            $globalSubModule->name = $submodule['submodule_name'];
            $globalSubModule->sub_module_route = $submodule['sub_module_route'];
            $globalSubModule->module_id = $mainModule->id;
            $globalSubModule->status = 1;
            $globalSubModule->save();
            foreach($submodule['perm_route_name'] as $routeKey => $rouetValue){
            	if($rouetValue != null){
            		$globalModuleRoute = new Route;
	                $globalModuleRoute->sub_module_id = $globalSubModule->id;
	                $globalModuleRoute->route = $submodule['perm_route'][$routeKey];
	                $globalModuleRoute->route_name = $submodule['perm_route_name'][$routeKey];
	                $globalModuleRoute->status = 1;
	                $globalModuleRoute->save();
            	}
            }
        }

    	return redirect()->route('list.module');
    }
    public function saveModule(Request $request)
    {
        $greatest_orderId = Module::orderBy('orderBy','DESC')->first();
        $model = new Module;
        $model->name = $request->name;
        $model->orderBy = $greatest_orderId->orderBy+1;
        $model->save();
            return back();
    }
    public function SubModuleSave(Request $request)
    {
        $get_last_id = GlobalSubModule::where('module_id' ,$request->module_id)->orderBy('orderBy','DESC')->first();
        if($get_last_id !=null){
            $order_id = $get_last_id->orderBy+1;
        }else{
            $order_id = 1;
        }
        $model = new GlobalSubModule;
        $model->name = $request->name;
        $model->status = 1;
        $model->orderBy = $order_id;
        $model->module_id = $request->module_id;
        $model->save();
        return back();
    }
    public function deleteModule($id)
    {
        $deleteModule = Module::where('id',$id)->delete();
        $getSubModule = GlobalSubModule::where('module_id',$id)->get();
        if($getSubModule->count() > 0){
            GlobalSubModule::where('module_id',$id)->delete();
        }
        return back();
    }
    public function deletesubModule($id)
    {
        $delModule = GlobalSubModule::where('id',$id)->delete();
        if($delModule){
            return back();
        }
    }
    public function sortSubModuleDown($id , $subModule)
    {
        $getData = GlobalSubModule::where(['module_id' => $id , 'id' => $subModule])->first();
        $newSort = $getData->orderBy+1;

        $getNextRow = GlobalSubModule::where('orderBy', $newSort)->first();
        if($getNextRow != null){
            GlobalSubModule::where('orderBy', $newSort)->update(['orderBy' => $getNextRow->orderBy-1]);
            GlobalSubModule::where(['module_id' => $id , 'id' => $subModule])->update(['orderBy' => $getData->orderBy+1]);
        }
        return back();
    }
    public function sortSubModuleUp($id , $subModule)
    {
        $getData = GlobalSubModule::where(['module_id' => $id , 'id' => $subModule])->first();
        $newSort = $getData->orderBy-1;
        $getNextRow = GlobalSubModule::where('orderBy', $newSort)->first();
        if($getNextRow != null){
            GlobalSubModule::where('orderBy', $newSort)->update(['orderBy' => $getNextRow->orderBy+1]);
            GlobalSubModule::where(['module_id' => $id , 'id' => $subModule])->update(['orderBy' => $getData->orderBy-1]);
        }
        return back();

    }
//Module form add route row
    public function add_route_row()
    {
        return view('admin.module.add_route_row');
    }


    /**
     * [edit description] 
     * @param  Request $request [form data]
     * @param  [int]  $id      [description]
     * @return [type]           [description]
     */
    public function edit(Request $request, $id=null)
    { 
        if($request->isMethod('post')){  
            $mainModule = Module::with(['subModule'=>function($query){
            $query->with('moduleRoute');
            }])->find($id);
            
	        $mainModule->name = $request->name;
	        $mainModule->route = $request->route;
	        $mainModule->save();
            $subModulesCheck = GlobalSubModule::where('module_id',$id);
            if($subModulesCheck->exists()){
             $subModules = GlobalSubModule::where('module_id',$id)->select('id')->get()->keyBy('id')->toArray();
            }
            if($request->submodule != null){
                foreach($request->submodule as $key => $submodule){
                   if(isset($submodule['submodule_id'])){
                    unset($subModules[$submodule['submodule_id']]);
                        $globalSubModule = GlobalSubModule::find($submodule['submodule_id']);
                    }else{
    	               $globalSubModule = new GlobalSubModule;
                    }
    	            $globalSubModule->name = $submodule['submodule_name']; 
    	            $globalSubModule->sub_module_route = $submodule['sub_module_route'];
    	            $globalSubModule->module_id = $mainModule->id;
    	            $globalSubModule->status = 1;
    	            $globalSubModule->save();
                    $routeCheck =  Route::where('sub_module_id',$globalSubModule->id);
                    $routes = $routeCheck->select('id')->get()->keyBy('id')->toArray();
                   if($routeCheck->exists()){
                    $routes = $routeCheck->select('id')->get()->keyBy('id')->toArray();
                   }

    	            if(isset($submodule['perm_route_name'])){
    	            	foreach($submodule['perm_route_name'] as $routeKey => $rouetValue){
    		            	if($rouetValue != null){
                                if(isset($submodule['route_id'][$routeKey])){
                                    unset($routes[$submodule['route_id'][$routeKey]]);
                                    $globalModuleRoute = Route::find($submodule['route_id'][$routeKey]);
                                }else{
    		            		        $globalModuleRoute = new Route;
                                    }
    			                $globalModuleRoute->sub_module_id = $globalSubModule->id;
    			                $globalModuleRoute->route = $submodule['perm_route'][$routeKey];
    			                $globalModuleRoute->route_name = $submodule['perm_route_name'][$routeKey];
    			                $globalModuleRoute->status = 1;
    			                $globalModuleRoute->save();
    		            	}
                        }
    	            }
                   if(!empty($routes)){
                        $flattenRoute =collect($routes)->flatten()->all();
                        Route::whereIn('id',$routes)->delete();
                    }
    	        }
                $flattenModule = collect($subModules)->flatten()->all();
                GlobalSubModule::with('moduleRoute')->whereIn('id',$flattenModule)->delete();
                Route::whereIn('sub_module_id',$flattenModule)->delete();
            }
            return redirect()->route('list.module');
        }
        $module =[];
        if(!empty($id))
        {
            $module = Module::with(['subModule'=>function($query){
                $query->with('moduleRoute');
            }])->where('id',$id)->first();
        }
        return view('admin.module.edit',['module'=>$module]);
    }

    public function editsubModule(Request $request)
    {
        $newArray = array_combine($request->routes, $request->route_name);
        foreach($newArray as $key => $routesData){
            $save = Route::firstOrNew(['sub_module_id'=>$request->subModule_id,'route'=>$key]);
            $save->sub_module_id = $request->subModule_id;
            $save->route = $key;
            $save->route_name = $routesData;
            $save->save();
        }
        return back();
    }
    public function deletesubModulePermission($id,$route_name)
    {
        $model = Route::where(['sub_module_id' => $id , 'route_name' => $route_name])->delete();
        return back();
    }
    public function delete_route($id)
    {
       $model = Route::find($id);
       $model->delete();
       return back();
    }
    
	public function delete($id)
    {     
         Module::with(['subModule'=>function($query){
                $query->with('moduleRoute');
            }])->find($id)->delete();
         return back();
    }

    public function update_module_status(Request $request){
        if($request['status']=='true')
        {
            $status['status'] = 1;
        }
        else{
           $status['status'] =  0;
        }
      Module::where('id',$request['id'])->update($status);
      
    }

    public function createSubmodule($moduleID){
       return view('admin.module.submodule.create');
    }

    public function submoduleList($moduleID){

        $subModule = GlobalSubModule::where('module_id',$moduleID)->get();
        return view('admin.module.submodule.index',['submodule'=>$subModule]);
    }

    public function saveSubModule(Request $request, $moduleID){

        $model = new GlobalSubModule;
        $model->name = $request->name;
        $model->status = 1;
        $model->module_id = $moduleID;
        $model->save();
        return redirect()->route('submodule.list');
    }

    public function saveStyleModule(Request $request)
    {
        $model = Module::where('id',$request->modules_id)->update($request->except('_token','modules_id'));
        return back();  
    }

    /*************** Ajax Functions *****************/

    public function getSingleModule(Request $request, $id = null){
        if($id != null){

        }else{
            $moduleCount = $request->moduleCount;
            return view('admin.module.sub-module.module',['count'=>$moduleCount])->render();
        }
    }

    public function getSingleRoutePermission(Request $request){
        $routeCount = $request->routeCount;
        return view('admin.module.sub-module.route-perm',['count'=>$routeCount]);
    }
    public function sortModule(Request $request)
    {
        //get value of module and arrange it by sort 
        $module_id = $request->module_id;
        $new_array = [];
        $index = 1;
        foreach($module_id as $key => $value){
            $new_array[$value] = $index;
            $index++;
        }
        foreach($new_array as $module_id => $order_id){
            Module::where('id',$module_id)->update(['orderBy'=>$order_id]);
        }

    }
    public function sortModuleDown($id)
    {
        $model= Module::where('id',$id)->first();
        $increment = $model->orderBy+'1';
        $getNextRow = Module::where('orderBy',$increment)->first();
        
        if( $getNextRow != null){
            $decress = $getNextRow->orderBy-'1';
            $new_sort = Module::where('orderBy',$increment)->update(['orderBy' => $decress]);
            $new_sort = Module::where('id',$id)->update(['orderBy' => $increment]);
        }
        return back();
    }
    public function sortModuleUp($id)
    {
        $model= Module::where('id',$id)->first();
        $decress = $model->orderBy-'1';
        $getNextRow = Module::where('orderBy',$decress)->first();
        
        if( $getNextRow != null){
            $increment= $getNextRow->orderBy+'1';
            $new_sort = Module::where('orderBy',$decress)->update(['orderBy' => $increment]);
            $new_sort = Module::where('id',$id)->update(['orderBy' => $decress]);
        }
        return back();
    }
    public function style($id)
    {
        $model = GlobalSubModule::where('id',$id)->first();
        return view('admin.module.index',compact('subModulemodel'));
    }
    // public function style($id)
    // {
    //     $model = GlobalSubModule::where('id',$id)->first();
    //     return view('admin.module.style',compact('model'));
    // }
    public function getSubmodules($id)
    {
        $model = GlobalSubModule::where('module_id',$id)->get();
        return view('admin.module.getSubModule',compact('model'));
    }
    public function saveStyle(Request $request)
    {   
        // dd($request->all());
        $model = GlobalSubModule::where('id',$request->sub_modules_id)->update($request->except('_token','sub_modules_id'));
        return back();
    }

}
// $keyBy = Module::select('id')->get()->keyBy('id')->toArray();
        // $mids = collect($keyBy)->flatten()->toArray();
        // GlobalSubModule::whereNotIn('module_id',$mids)->delete();

        // $subkeyBy = GlobalSubModule::select('id')->get()->keyBy('id')->toArray();
        // $submids = collect($subkeyBy)->flatten()->toArray();
        // Route::whereNotIn('sub_module_id',$submids)->delete();